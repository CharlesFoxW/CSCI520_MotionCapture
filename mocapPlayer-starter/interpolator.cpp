#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <float.h>
#include "motion.h"
#include "interpolator.h"
#include "types.h"

Interpolator::Interpolator()
{
  //Set default interpolation type
  m_InterpolationType = LINEAR;

  //set default angle representation to use for interpolation
  m_AngleRepresentation = EULER;
}

Interpolator::~Interpolator()
{
}

//Create interpolated motion
void Interpolator::Interpolate(Motion * pInputMotion, Motion ** pOutputMotion, int N) 
{
  //Allocate new motion
  *pOutputMotion = new Motion(pInputMotion->GetNumFrames(), pInputMotion->GetSkeleton()); 

  //Perform the interpolation
  if ((m_InterpolationType == LINEAR) && (m_AngleRepresentation == EULER))
    LinearInterpolationEuler(pInputMotion, *pOutputMotion, N);
  else if ((m_InterpolationType == LINEAR) && (m_AngleRepresentation == QUATERNION))
    LinearInterpolationQuaternion(pInputMotion, *pOutputMotion, N);
  else if ((m_InterpolationType == BEZIER) && (m_AngleRepresentation == EULER))
    BezierInterpolationEuler(pInputMotion, *pOutputMotion, N);
  else if ((m_InterpolationType == BEZIER) && (m_AngleRepresentation == QUATERNION))
    BezierInterpolationQuaternion(pInputMotion, *pOutputMotion, N);
  else
  {
    printf("Error: unknown interpolation / angle representation type.\n");
    exit(1);
  }
}

void Interpolator::LinearInterpolationEuler(Motion * pInputMotion, Motion * pOutputMotion, int N)
{
  int inputLength = pInputMotion->GetNumFrames(); // frames are indexed 0, ..., inputLength-1

  int startKeyframe = 0;
  while (startKeyframe + N + 1 < inputLength)
  {
    int endKeyframe = startKeyframe + N + 1;

    Posture * startPosture = pInputMotion->GetPosture(startKeyframe);
    Posture * endPosture = pInputMotion->GetPosture(endKeyframe);

    // copy start and end keyframe
    pOutputMotion->SetPosture(startKeyframe, *startPosture);
    pOutputMotion->SetPosture(endKeyframe, *endPosture);

    // interpolate in between
    for(int frame=1; frame<=N; frame++)
    {
      Posture interpolatedPosture;
      double t = 1.0 * frame / (N+1);

      // interpolate root position
      interpolatedPosture.root_pos = startPosture->root_pos * (1-t) + endPosture->root_pos * t;

      // interpolate bone rotations
      for (int bone = 0; bone < MAX_BONES_IN_ASF_FILE; bone++)
        interpolatedPosture.bone_rotation[bone] = startPosture->bone_rotation[bone] * (1-t) + endPosture->bone_rotation[bone] * t;

      pOutputMotion->SetPosture(startKeyframe + frame, interpolatedPosture);
    }

    startKeyframe = endKeyframe;
  }

  for(int frame=startKeyframe+1; frame<inputLength; frame++)
    pOutputMotion->SetPosture(frame, *(pInputMotion->GetPosture(frame)));
}

void Interpolator::Rotation2Euler(double R[9], double angles[3])
{
  double cy = sqrt(R[0]*R[0] + R[3]*R[3]);

  if (cy > 16*DBL_EPSILON) 
  {
    angles[0] = atan2(R[7], R[8]);
    angles[1] = atan2(-R[6], cy);
    angles[2] = atan2(R[3], R[0]);
  } 
  else 
  {
    angles[0] = atan2(-R[5], R[4]);
    angles[1] = atan2(-R[6], cy);
    angles[2] = 0;
  }

  for(int i=0; i<3; i++)
    angles[i] *= 180 / M_PI;
}

void Interpolator::Euler2Rotation(double angles[3], double R[9])
{
    double radiantAngles[3];
    for(int i=0; i<3; i++)
        radiantAngles[i] = angles[i] * M_PI / 180;
    // result matrix from R = ZYX.
    R[0] = cos(radiantAngles[2]) * cos(radiantAngles[1]);
    R[1] = sin(radiantAngles[0]) * cos(radiantAngles[2]) * sin(radiantAngles[1])
           - sin(radiantAngles[2]) * cos(radiantAngles[0]);
    R[2] = sin(radiantAngles[2]) * sin(radiantAngles[0])
           + cos(radiantAngles[2]) * sin(radiantAngles[1]) * cos(radiantAngles[0]);
    R[3] = sin(radiantAngles[2]) * cos(radiantAngles[1]);
    R[4] = cos(radiantAngles[2]) * cos(radiantAngles[0])
           + sin(radiantAngles[2]) * sin(radiantAngles[1]) * sin(radiantAngles[0]);
    R[5] = sin(radiantAngles[2]) * sin(radiantAngles[1]) * cos(radiantAngles[0])
           - sin(radiantAngles[0]) * cos(radiantAngles[2]);
    R[6] = -1.0 * sin(radiantAngles[1]);
    R[7] = sin(radiantAngles[0]) * cos(radiantAngles[1]);
    R[8] = cos(radiantAngles[1]) * cos(radiantAngles[0]);
}

void Interpolator::BezierInterpolationEuler(Motion * pInputMotion, Motion * pOutputMotion, int N)
{
    int inputLength = pInputMotion->GetNumFrames(); // frames are indexed 0, ..., inputLength-1

    int startKeyframe = 0;
    while (startKeyframe + N + 1 < inputLength)
    {
        int endKeyframe = startKeyframe + N + 1;
        int firstCtrlFrame = startKeyframe + (int) ((double) (N + 1) / 3.0 + 0.5);
        int secondCtrlFrame = startKeyframe + (int) ((double) (N + 1) * 2.0 / 3.0 + 0.5);

        Posture * startPosture = pInputMotion->GetPosture(startKeyframe);
        Posture * endPosture = pInputMotion->GetPosture(endKeyframe);
        Posture * firstCtrlPosture = pInputMotion->GetPosture(firstCtrlFrame);
        Posture * secondCtrlPosture = pInputMotion->GetPosture(secondCtrlFrame);

        // copy start and end keyframe
        pOutputMotion->SetPosture(startKeyframe, *startPosture);
        pOutputMotion->SetPosture(endKeyframe, *endPosture);

        // interpolate in between
        for(int frame=1; frame<=N; frame++)
        {
            Posture interpolatedPosture;
            double u = 1.0 * frame / (N+1);

            double c1 = -1.0 * pow(u, 3) + 3.0 * pow(u, 2) - 3.0 * u + 1;
            double c2 = 3.0 * pow(u, 3) - 6.0 * pow(u, 2) + 3.0 * u;
            double c3 = -3.0 * pow(u, 3) + 3.0 * pow(u, 2);
            double c4 = pow(u, 3);

            // interpolate root position
            interpolatedPosture.root_pos = startPosture->root_pos * c1 + firstCtrlPosture->root_pos * c2
                    + secondCtrlPosture->root_pos * c3 + endPosture->root_pos * c4;

            // interpolate bone rotations
            for (int bone = 0; bone < MAX_BONES_IN_ASF_FILE; bone++) {
                interpolatedPosture.bone_rotation[bone] = startPosture->bone_rotation[bone] * c1
                                                          + firstCtrlPosture->bone_rotation[bone] * c2
                                                          + secondCtrlPosture->bone_rotation[bone] * c3
                                                          + endPosture->bone_rotation[bone] * c4;
            }

            pOutputMotion->SetPosture(startKeyframe + frame, interpolatedPosture);
        }

        startKeyframe = endKeyframe;
    }

    for(int frame=startKeyframe+1; frame<inputLength; frame++)
        pOutputMotion->SetPosture(frame, *(pInputMotion->GetPosture(frame)));
}

void Interpolator::LinearInterpolationQuaternion(Motion * pInputMotion, Motion * pOutputMotion, int N)
{
    int inputLength = pInputMotion->GetNumFrames(); // frames are indexed 0, ..., inputLength-1

    int startKeyframe = 0;
    while (startKeyframe + N + 1 < inputLength)
    {
        int endKeyframe = startKeyframe + N + 1;

        Posture * startPosture = pInputMotion->GetPosture(startKeyframe);
        Posture * endPosture = pInputMotion->GetPosture(endKeyframe);

        // copy start and end keyframe
        pOutputMotion->SetPosture(startKeyframe, *startPosture);
        pOutputMotion->SetPosture(endKeyframe, *endPosture);

        // interpolate in between
        for(int frame=1; frame<=N; frame++)
        {
            Posture interpolatedPosture;
            double t = 1.0 * frame / (N+1);

            // interpolate root position
            interpolatedPosture.root_pos = startPosture->root_pos * (1-t) + endPosture->root_pos * t;

            // interpolate bone rotations
            for (int bone = 0; bone < MAX_BONES_IN_ASF_FILE; bone++) {
                double startAngles[3], endAngles[3], resultAngles[3];
                startPosture->bone_rotation[bone].getValue(startAngles);
                endPosture->bone_rotation[bone].getValue(endAngles);

                Quaternion<double> startQ, endQ, resultQ;
                Euler2Quaternion(startAngles, startQ);
                Euler2Quaternion(endAngles, endQ);
                if (startQ.Norm2() != 0)
                    startQ.Normalize();
                if (endQ.Norm2() != 0)
                    endQ.Normalize();
                resultQ = Slerp(t, startQ, endQ);
                Quaternion2Euler(resultQ, resultAngles);
                interpolatedPosture.bone_rotation[bone].setValue(resultAngles);
            }

            pOutputMotion->SetPosture(startKeyframe + frame, interpolatedPosture);
        }

        startKeyframe = endKeyframe;
    }

    for(int frame=startKeyframe+1; frame<inputLength; frame++)
        pOutputMotion->SetPosture(frame, *(pInputMotion->GetPosture(frame)));
}

void Interpolator::BezierInterpolationQuaternion(Motion * pInputMotion, Motion * pOutputMotion, int N)
{
  // students should implement this
}

void Interpolator::Euler2Quaternion(double angles[3], Quaternion<double> & q) 
{
    double RotationMatrix[9];
    Euler2Rotation(angles, RotationMatrix);
    q = q.Matrix2Quaternion(RotationMatrix);
}

void Interpolator::Quaternion2Euler(Quaternion<double> & q, double angles[3]) 
{
    double RotationMatrix[9];
    q.Quaternion2Matrix(RotationMatrix);
    Rotation2Euler(RotationMatrix, angles);
}

Quaternion<double> Interpolator::Slerp(double t, Quaternion<double> & qStart, Quaternion<double> & qEnd_)
{
    Quaternion<double> result;
    double c1, c2, theta;
    double cosValue = qStart.Gets() * qEnd_.Gets() + qStart.Getx() * qEnd_.Getx()
                      + qStart.Gety() * qEnd_.Gety() + qStart.Getz() * qEnd_.Getz();
    if (fabs(cosValue) <= 1)
        theta = acos(cosValue);
    else
        theta = 0;
    if (sin(theta) == 0) {
        c1 = 0;
        c2 = 0;
    }
    else {
        c1 = sin((1.0 - t) * theta) / sin(theta);
        c2 = sin(t * theta) / sin(theta);
    }
    result = c1 * qStart + c2 * qEnd_;
    if (result.Norm2() != 0)
        result.Normalize();
    return result;
}

Quaternion<double> Interpolator::Double(Quaternion<double> p, Quaternion<double> q)
{
    Quaternion<double> result;
    result = 2.0 * (p.Gets() * q.Gets() + p.Getx() * q.Getx() + p.Gety() * q.Gety() + p.Getz() * q.Getz()) * q - p;
    return result;
}

vector Interpolator::DeCasteljauEuler(double t, vector p0, vector p1, vector p2, vector p3)
{
  // students should implement this
  vector result;
  return result;
}

Quaternion<double> Interpolator::DeCasteljauQuaternion(double t, Quaternion<double> p0, Quaternion<double> p1, Quaternion<double> p2, Quaternion<double> p3)
{
  // students should implement this
  Quaternion<double> result;
  return result;
}

