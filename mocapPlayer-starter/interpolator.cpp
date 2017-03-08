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
        int prevKeyframe = startKeyframe - N - 1;
        int nextKeyframe = endKeyframe + N + 1;

        Posture * startPosture = pInputMotion->GetPosture(startKeyframe);
        Posture * endPosture = pInputMotion->GetPosture(endKeyframe);

        // copy start and end keyframe
        pOutputMotion->SetPosture(startKeyframe, *startPosture);
        pOutputMotion->SetPosture(endKeyframe, *endPosture);

        // interpolate in between
        for(int frame=1; frame<=N; frame++)
        {
            Posture interpolatedPosture;
            double u = 1.0 * frame / (N+1);

            // interpolate root position
            if (prevKeyframe < 0) { // first
                Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                vector firstPart = nextPosture->root_pos * (-1.0) + endPosture->root_pos * 2.0;
                vector nextBarPart = startPosture->root_pos * (-1.0) + endPosture->root_pos * 2.0;
                vector nextBar = nextBarPart * 0.5 + nextPosture->root_pos * 0.5;
                vector firstControlPoint = startPosture->root_pos * (1.0 - 1.0/3.0) + firstPart * 1.0/3.0;
                vector secondControlPoint = endPosture->root_pos * (1.0 + 1.0/3.0) + nextBar * (-1.0/3.0); // b(n+1)

                interpolatedPosture.root_pos = DeCasteljauEuler(u, startPosture->root_pos, firstControlPoint,
                                                                secondControlPoint, endPosture->root_pos);
            }
            else if (nextKeyframe >= inputLength) { // last
                Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                vector barPart = prevPosture->root_pos * (-1.0) + startPosture->root_pos * 2.0;
                vector bar = barPart * 0.5 + endPosture->root_pos * 0.5;
                vector secondPart = prevPosture->root_pos * (-1.0) + startPosture->root_pos * 2.0;
                vector firstControlPoint = startPosture->root_pos * (1.0 - 1.0/3.0) + bar * 1.0/3.0; //a(n)
                vector secondControlPoint = endPosture->root_pos * (1.0 - 1.0/3.0) + secondPart * (1.0/3.0);
                interpolatedPosture.root_pos = DeCasteljauEuler(u, startPosture->root_pos, firstControlPoint,
                                                                secondControlPoint, endPosture->root_pos);
            }
            else {
                Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                vector barPart = prevPosture->root_pos * (-1.0) + startPosture->root_pos * 2.0;
                vector bar = barPart * 0.5 + endPosture->root_pos * 0.5;
                vector nextBarPart = startPosture->root_pos * (-1.0) + endPosture->root_pos * 2.0;
                vector nextBar = nextBarPart * 0.5 + nextPosture->root_pos * 0.5;

                vector firstControlPoint = startPosture->root_pos * (1.0 - 1.0/3.0) + bar * 1.0/3.0; //a(n)
                vector secondControlPoint = endPosture->root_pos * (1.0 + 1.0/3.0) + nextBar * (-1.0/3.0); // b(n+1)

                interpolatedPosture.root_pos = DeCasteljauEuler(u, startPosture->root_pos, firstControlPoint,
                                                                secondControlPoint, endPosture->root_pos);

            }

            for (int bone = 0; bone < MAX_BONES_IN_ASF_FILE; bone++) {
                if (prevKeyframe < 0) { // first
                    Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                    vector firstPart = nextPosture->bone_rotation[bone] * (-1.0) + endPosture->bone_rotation[bone] * 2.0;
                    vector nextBarPart = startPosture->bone_rotation[bone] * (-1.0) + endPosture->bone_rotation[bone] * 2.0;
                    vector nextBar = nextBarPart * 0.5 + nextPosture->bone_rotation[bone] * 0.5;
                    vector firstControlPoint = startPosture->bone_rotation[bone] * (1.0 - 1.0/3.0) + firstPart * 1.0/3.0;
                    vector secondControlPoint = endPosture->bone_rotation[bone] * (1.0 + 1.0/3.0) + nextBar * (-1.0/3.0); // b(n+1)

                    interpolatedPosture.bone_rotation[bone] = DeCasteljauEuler(u, startPosture->bone_rotation[bone],
                                                                               firstControlPoint, secondControlPoint,
                                                                               endPosture->bone_rotation[bone]);
                }
                else if (nextKeyframe >= inputLength) { // last
                    Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                    vector barPart = prevPosture->bone_rotation[bone] * (-1.0) + startPosture->bone_rotation[bone] * 2.0;
                    vector bar = barPart * 0.5 + endPosture->bone_rotation[bone] * 0.5;
                    vector secondPart = prevPosture->bone_rotation[bone] * (-1.0) + startPosture->bone_rotation[bone] * 2.0;
                    vector firstControlPoint = startPosture->bone_rotation[bone] * (1.0 - 1.0/3.0) + bar * 1.0/3.0; //a(n)
                    vector secondControlPoint = endPosture->bone_rotation[bone] * (1.0 - 1.0/3.0) + secondPart * (1.0/3.0);
                    interpolatedPosture.bone_rotation[bone] = DeCasteljauEuler(u, startPosture->bone_rotation[bone],
                                                                               firstControlPoint, secondControlPoint,
                                                                               endPosture->bone_rotation[bone]);
                }
                else {
                    Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                    Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                    vector barPart = prevPosture->bone_rotation[bone] * (-1.0) + startPosture->bone_rotation[bone] * 2.0;
                    vector bar = barPart * 0.5 + endPosture->bone_rotation[bone] * 0.5;
                    vector nextBarPart = startPosture->bone_rotation[bone] * (-1.0) + endPosture->bone_rotation[bone] * 2.0;
                    vector nextBar = nextBarPart * 0.5 + nextPosture->bone_rotation[bone] * 0.5;

                    vector firstControlPoint = startPosture->bone_rotation[bone] * (1.0 - 1.0/3.0) + bar * 1.0/3.0; //a(n)
                    vector secondControlPoint = endPosture->bone_rotation[bone] * (1.0 + 1.0/3.0) + nextBar * (-1.0/3.0); //b(n+1)

                    interpolatedPosture.bone_rotation[bone] = DeCasteljauEuler(u, startPosture->bone_rotation[bone],
                                                                               firstControlPoint, secondControlPoint,
                                                                               endPosture->bone_rotation[bone]);
                }
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
    int inputLength = pInputMotion->GetNumFrames(); // frames are indexed 0, ..., inputLength-1

    int startKeyframe = 0;
    while (startKeyframe + N + 1 < inputLength)
    {
        int endKeyframe = startKeyframe + N + 1;
        int prevKeyframe = startKeyframe - N - 1;
        int nextKeyframe = endKeyframe + N + 1;

        Posture * startPosture = pInputMotion->GetPosture(startKeyframe);
        Posture * endPosture = pInputMotion->GetPosture(endKeyframe);

        // copy start and end keyframe
        pOutputMotion->SetPosture(startKeyframe, *startPosture);
        pOutputMotion->SetPosture(endKeyframe, *endPosture);

        // interpolate in between
        for(int frame=1; frame<=N; frame++)
        {
            Posture interpolatedPosture;
            double u = 1.0 * frame / (N+1);

            // interpolate root position
            if (prevKeyframe < 0) { // first
                Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                vector firstPart = nextPosture->root_pos * (-1.0) + endPosture->root_pos * 2.0;
                vector nextBarPart = startPosture->root_pos * (-1.0) + endPosture->root_pos * 2.0;
                vector nextBar = nextBarPart * 0.5 + nextPosture->root_pos * 0.5;
                vector firstControlPoint = startPosture->root_pos * (1.0 - 1.0/3.0) + firstPart * 1.0/3.0;
                vector secondControlPoint = endPosture->root_pos * (1.0 + 1.0/3.0) + nextBar * (-1.0/3.0); // b(n+1)

                interpolatedPosture.root_pos = DeCasteljauEuler(u, startPosture->root_pos, firstControlPoint,
                                                                secondControlPoint, endPosture->root_pos);
            }
            else if (nextKeyframe >= inputLength) { // last
                Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                vector barPart = prevPosture->root_pos * (-1.0) + startPosture->root_pos * 2.0;
                vector bar = barPart * 0.5 + endPosture->root_pos * 0.5;
                vector secondPart = prevPosture->root_pos * (-1.0) + startPosture->root_pos * 2.0;
                vector firstControlPoint = startPosture->root_pos * (1.0 - 1.0/3.0) + bar * 1.0/3.0; //a(n)
                vector secondControlPoint = endPosture->root_pos * (1.0 - 1.0/3.0) + secondPart * (1.0/3.0);
                interpolatedPosture.root_pos = DeCasteljauEuler(u, startPosture->root_pos, firstControlPoint,
                                                                secondControlPoint, endPosture->root_pos);
            }
            else {
                Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                vector barPart = prevPosture->root_pos * (-1.0) + startPosture->root_pos * 2.0;
                vector bar = barPart * 0.5 + endPosture->root_pos * 0.5;
                vector nextBarPart = startPosture->root_pos * (-1.0) + endPosture->root_pos * 2.0;
                vector nextBar = nextBarPart * 0.5 + nextPosture->root_pos * 0.5;

                vector firstControlPoint = startPosture->root_pos * (1.0 - 1.0/3.0) + bar * 1.0/3.0; //a(n)
                vector secondControlPoint = endPosture->root_pos * (1.0 + 1.0/3.0) + nextBar * (-1.0/3.0); // b(n+1)

                interpolatedPosture.root_pos = DeCasteljauEuler(u, startPosture->root_pos, firstControlPoint,
                                                                secondControlPoint, endPosture->root_pos);

            }

            for (int bone = 0; bone < MAX_BONES_IN_ASF_FILE; bone++) {

                if (prevKeyframe < 0) { // first
                    Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                    double startAngles[3], endAngles[3], nextAngles[3], resultAngles[3];
                    Quaternion<double> startQ, endQ, nextQ;

                    startPosture->bone_rotation[bone].getValue(startAngles);
                    endPosture->bone_rotation[bone].getValue(endAngles);
                    nextPosture->bone_rotation[bone].getValue(nextAngles);

                    Euler2Quaternion(startAngles, startQ);
                    Euler2Quaternion(endAngles, endQ);
                    Euler2Quaternion(nextAngles, nextQ);
                    if (startQ.Norm2() != 0)
                        startQ.Normalize();
                    if (endQ.Norm2() != 0)
                        endQ.Normalize();
                    if (nextQ.Norm2() != 0)
                        nextQ.Normalize();

                    Quaternion<double> firstPart = Slerp(2.0, nextQ, endQ);
                    Quaternion<double> nextBarPart = Slerp(2.0, startQ, endQ);
                    Quaternion<double> nextBar = Slerp(0.5, nextBarPart, nextQ);
                    Quaternion<double> firstControlPoint = Slerp(1.0/3.0, startQ, firstPart);
                    Quaternion<double> secondControlPoint = Slerp(-1.0/3.0,endQ, nextBar); // b(n+1)

                    Quaternion<double> resultQ = DeCasteljauQuaternion(u, startQ, firstControlPoint,
                                                                       secondControlPoint, endQ);
                    Quaternion2Euler(resultQ, resultAngles);
                    interpolatedPosture.bone_rotation[bone].setValue(resultAngles);
                }
                else if (nextKeyframe >= inputLength) { // last
                    Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                    double startAngles[3], endAngles[3], prevAngles[3], resultAngles[3];
                    Quaternion<double> startQ, endQ, prevQ;

                    startPosture->bone_rotation[bone].getValue(startAngles);
                    endPosture->bone_rotation[bone].getValue(endAngles);
                    prevPosture->bone_rotation[bone].getValue(prevAngles);

                    Euler2Quaternion(startAngles, startQ);
                    Euler2Quaternion(endAngles, endQ);
                    Euler2Quaternion(prevAngles, prevQ);
                    if (startQ.Norm2() != 0)
                        startQ.Normalize();
                    if (endQ.Norm2() != 0)
                        endQ.Normalize();
                    if (prevQ.Norm2() != 0)
                        prevQ.Normalize();

                    Quaternion<double> barPart = Slerp(2.0, prevQ, startQ);
                    Quaternion<double> bar = Slerp(0.5, barPart, endQ);
                    Quaternion<double> secondPart = Slerp(2.0, prevQ, startQ);
                    Quaternion<double> firstControlPoint = Slerp(1.0/3.0, startQ, bar); //a(n)
                    Quaternion<double> secondControlPoint = Slerp(1.0/3.0, endQ, secondPart);

                    Quaternion<double> resultQ = DeCasteljauQuaternion(u, startQ, firstControlPoint,
                                                                       secondControlPoint, endQ);
                    Quaternion2Euler(resultQ, resultAngles);
                    interpolatedPosture.bone_rotation[bone].setValue(resultAngles);
                }
                else {
                    Posture * prevPosture = pInputMotion->GetPosture(prevKeyframe);
                    Posture * nextPosture = pInputMotion->GetPosture(nextKeyframe);
                    double startAngles[3], endAngles[3], prevAngles[3], nextAngles[3], resultAngles[3];
                    Quaternion<double> startQ, endQ, prevQ, nextQ;

                    startPosture->bone_rotation[bone].getValue(startAngles);
                    endPosture->bone_rotation[bone].getValue(endAngles);
                    prevPosture->bone_rotation[bone].getValue(prevAngles);
                    nextPosture->bone_rotation[bone].getValue(nextAngles);

                    Euler2Quaternion(startAngles, startQ);
                    Euler2Quaternion(endAngles, endQ);
                    Euler2Quaternion(prevAngles, prevQ);
                    Euler2Quaternion(nextAngles, nextQ);
                    if (startQ.Norm2() != 0)
                        startQ.Normalize();
                    if (endQ.Norm2() != 0)
                        endQ.Normalize();
                    if (prevQ.Norm2() != 0)
                        prevQ.Normalize();
                    if (nextQ.Norm2() != 0)
                        nextQ.Normalize();

                    Quaternion<double> barPart = Slerp(2.0, prevQ, startQ);
                    Quaternion<double> bar = Slerp(0.5, barPart, endQ);
                    Quaternion<double> nextBarPart = Slerp(2.0, startQ, endQ);
                    Quaternion<double> nextBar = Slerp(0.5, nextBarPart, nextQ);

                    Quaternion<double> firstControlPoint = Slerp(1.0/3.0, startQ, bar); //a(n)
                    Quaternion<double> secondControlPoint = Slerp(-1.0/3.0, endQ, nextBar); //b(n+1)

                    Quaternion<double> resultQ = DeCasteljauQuaternion(u, startQ, firstControlPoint,
                                                                       secondControlPoint, endQ);
                    Quaternion2Euler(resultQ, resultAngles);
                    interpolatedPosture.bone_rotation[bone].setValue(resultAngles);
                }
            }

            pOutputMotion->SetPosture(startKeyframe + frame, interpolatedPosture);
        }

        startKeyframe = endKeyframe;
    }

    for(int frame=startKeyframe+1; frame<inputLength; frame++)
        pOutputMotion->SetPosture(frame, *(pInputMotion->GetPosture(frame)));
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
    if (fabs(cosValue) > 1.0)
        theta = 0;
    else if (cosValue < 0) {   // change the sign of one of the quaternions.
        theta = acos(-1.0 * cosValue);
        qStart = qStart * -1.0;
    }
    else
        theta = acos(cosValue);
    if (sin(theta) == 0) { // calculate Limit(theta -> 0)
        c1 = 1 - t;
        c2 = t;
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
    vector result;
    vector p10 = p0 * (1-t) + p1 * t;
    vector p11 = p1 * (1-t) + p2 * t;
    vector p12 = p2 * (1-t) + p3 * t;
    vector p20 = p10 * (1-t) + p11 * t;
    vector p21 = p11 * (1-t) + p12 * t;
    result = p20 * (1-t) + p21 * t;
    return result;
}

Quaternion<double> Interpolator::DeCasteljauQuaternion(double t, Quaternion<double> p0, Quaternion<double> p1, Quaternion<double> p2, Quaternion<double> p3)
{
    Quaternion<double> result;
    Quaternion<double> p10 = Slerp(t, p0, p1);
    Quaternion<double> p11 = Slerp(t, p1, p2);
    Quaternion<double> p12 = Slerp(t, p2, p3);
    Quaternion<double> p20 = Slerp(t, p10, p11);
    Quaternion<double> p21 = Slerp(t, p11, p12);
    result = Slerp(t, p20, p21);
    return result;
}

