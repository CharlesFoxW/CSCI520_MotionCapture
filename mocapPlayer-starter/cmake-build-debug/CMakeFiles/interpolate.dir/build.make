# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/interpolate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/interpolate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/interpolate.dir/flags.make

CMakeFiles/interpolate.dir/motion.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/motion.cpp.o: ../motion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/interpolate.dir/motion.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/motion.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/motion.cpp

CMakeFiles/interpolate.dir/motion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/motion.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/motion.cpp > CMakeFiles/interpolate.dir/motion.cpp.i

CMakeFiles/interpolate.dir/motion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/motion.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/motion.cpp -o CMakeFiles/interpolate.dir/motion.cpp.s

CMakeFiles/interpolate.dir/motion.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/motion.cpp.o.requires

CMakeFiles/interpolate.dir/motion.cpp.o.provides: CMakeFiles/interpolate.dir/motion.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/motion.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/motion.cpp.o.provides

CMakeFiles/interpolate.dir/motion.cpp.o.provides.build: CMakeFiles/interpolate.dir/motion.cpp.o


CMakeFiles/interpolate.dir/posture.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/posture.cpp.o: ../posture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/interpolate.dir/posture.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/posture.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/posture.cpp

CMakeFiles/interpolate.dir/posture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/posture.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/posture.cpp > CMakeFiles/interpolate.dir/posture.cpp.i

CMakeFiles/interpolate.dir/posture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/posture.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/posture.cpp -o CMakeFiles/interpolate.dir/posture.cpp.s

CMakeFiles/interpolate.dir/posture.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/posture.cpp.o.requires

CMakeFiles/interpolate.dir/posture.cpp.o.provides: CMakeFiles/interpolate.dir/posture.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/posture.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/posture.cpp.o.provides

CMakeFiles/interpolate.dir/posture.cpp.o.provides.build: CMakeFiles/interpolate.dir/posture.cpp.o


CMakeFiles/interpolate.dir/skeleton.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/skeleton.cpp.o: ../skeleton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/interpolate.dir/skeleton.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/skeleton.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/skeleton.cpp

CMakeFiles/interpolate.dir/skeleton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/skeleton.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/skeleton.cpp > CMakeFiles/interpolate.dir/skeleton.cpp.i

CMakeFiles/interpolate.dir/skeleton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/skeleton.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/skeleton.cpp -o CMakeFiles/interpolate.dir/skeleton.cpp.s

CMakeFiles/interpolate.dir/skeleton.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/skeleton.cpp.o.requires

CMakeFiles/interpolate.dir/skeleton.cpp.o.provides: CMakeFiles/interpolate.dir/skeleton.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/skeleton.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/skeleton.cpp.o.provides

CMakeFiles/interpolate.dir/skeleton.cpp.o.provides.build: CMakeFiles/interpolate.dir/skeleton.cpp.o


CMakeFiles/interpolate.dir/transform.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/transform.cpp.o: ../transform.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/interpolate.dir/transform.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/transform.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/transform.cpp

CMakeFiles/interpolate.dir/transform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/transform.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/transform.cpp > CMakeFiles/interpolate.dir/transform.cpp.i

CMakeFiles/interpolate.dir/transform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/transform.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/transform.cpp -o CMakeFiles/interpolate.dir/transform.cpp.s

CMakeFiles/interpolate.dir/transform.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/transform.cpp.o.requires

CMakeFiles/interpolate.dir/transform.cpp.o.provides: CMakeFiles/interpolate.dir/transform.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/transform.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/transform.cpp.o.provides

CMakeFiles/interpolate.dir/transform.cpp.o.provides.build: CMakeFiles/interpolate.dir/transform.cpp.o


CMakeFiles/interpolate.dir/vector.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/vector.cpp.o: ../vector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/interpolate.dir/vector.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/vector.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/vector.cpp

CMakeFiles/interpolate.dir/vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/vector.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/vector.cpp > CMakeFiles/interpolate.dir/vector.cpp.i

CMakeFiles/interpolate.dir/vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/vector.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/vector.cpp -o CMakeFiles/interpolate.dir/vector.cpp.s

CMakeFiles/interpolate.dir/vector.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/vector.cpp.o.requires

CMakeFiles/interpolate.dir/vector.cpp.o.provides: CMakeFiles/interpolate.dir/vector.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/vector.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/vector.cpp.o.provides

CMakeFiles/interpolate.dir/vector.cpp.o.provides.build: CMakeFiles/interpolate.dir/vector.cpp.o


CMakeFiles/interpolate.dir/interpolator.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/interpolator.cpp.o: ../interpolator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/interpolate.dir/interpolator.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/interpolator.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/interpolator.cpp

CMakeFiles/interpolate.dir/interpolator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/interpolator.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/interpolator.cpp > CMakeFiles/interpolate.dir/interpolator.cpp.i

CMakeFiles/interpolate.dir/interpolator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/interpolator.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/interpolator.cpp -o CMakeFiles/interpolate.dir/interpolator.cpp.s

CMakeFiles/interpolate.dir/interpolator.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/interpolator.cpp.o.requires

CMakeFiles/interpolate.dir/interpolator.cpp.o.provides: CMakeFiles/interpolate.dir/interpolator.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/interpolator.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/interpolator.cpp.o.provides

CMakeFiles/interpolate.dir/interpolator.cpp.o.provides.build: CMakeFiles/interpolate.dir/interpolator.cpp.o


CMakeFiles/interpolate.dir/quaternion.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/quaternion.cpp.o: ../quaternion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/interpolate.dir/quaternion.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/quaternion.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/quaternion.cpp

CMakeFiles/interpolate.dir/quaternion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/quaternion.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/quaternion.cpp > CMakeFiles/interpolate.dir/quaternion.cpp.i

CMakeFiles/interpolate.dir/quaternion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/quaternion.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/quaternion.cpp -o CMakeFiles/interpolate.dir/quaternion.cpp.s

CMakeFiles/interpolate.dir/quaternion.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/quaternion.cpp.o.requires

CMakeFiles/interpolate.dir/quaternion.cpp.o.provides: CMakeFiles/interpolate.dir/quaternion.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/quaternion.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/quaternion.cpp.o.provides

CMakeFiles/interpolate.dir/quaternion.cpp.o.provides.build: CMakeFiles/interpolate.dir/quaternion.cpp.o


CMakeFiles/interpolate.dir/interpolate.cpp.o: CMakeFiles/interpolate.dir/flags.make
CMakeFiles/interpolate.dir/interpolate.cpp.o: ../interpolate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/interpolate.dir/interpolate.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/interpolate.dir/interpolate.cpp.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/interpolate.cpp

CMakeFiles/interpolate.dir/interpolate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/interpolate.dir/interpolate.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/interpolate.cpp > CMakeFiles/interpolate.dir/interpolate.cpp.i

CMakeFiles/interpolate.dir/interpolate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/interpolate.dir/interpolate.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/interpolate.cpp -o CMakeFiles/interpolate.dir/interpolate.cpp.s

CMakeFiles/interpolate.dir/interpolate.cpp.o.requires:

.PHONY : CMakeFiles/interpolate.dir/interpolate.cpp.o.requires

CMakeFiles/interpolate.dir/interpolate.cpp.o.provides: CMakeFiles/interpolate.dir/interpolate.cpp.o.requires
	$(MAKE) -f CMakeFiles/interpolate.dir/build.make CMakeFiles/interpolate.dir/interpolate.cpp.o.provides.build
.PHONY : CMakeFiles/interpolate.dir/interpolate.cpp.o.provides

CMakeFiles/interpolate.dir/interpolate.cpp.o.provides.build: CMakeFiles/interpolate.dir/interpolate.cpp.o


# Object files for target interpolate
interpolate_OBJECTS = \
"CMakeFiles/interpolate.dir/motion.cpp.o" \
"CMakeFiles/interpolate.dir/posture.cpp.o" \
"CMakeFiles/interpolate.dir/skeleton.cpp.o" \
"CMakeFiles/interpolate.dir/transform.cpp.o" \
"CMakeFiles/interpolate.dir/vector.cpp.o" \
"CMakeFiles/interpolate.dir/interpolator.cpp.o" \
"CMakeFiles/interpolate.dir/quaternion.cpp.o" \
"CMakeFiles/interpolate.dir/interpolate.cpp.o"

# External object files for target interpolate
interpolate_EXTERNAL_OBJECTS =

interpolate: CMakeFiles/interpolate.dir/motion.cpp.o
interpolate: CMakeFiles/interpolate.dir/posture.cpp.o
interpolate: CMakeFiles/interpolate.dir/skeleton.cpp.o
interpolate: CMakeFiles/interpolate.dir/transform.cpp.o
interpolate: CMakeFiles/interpolate.dir/vector.cpp.o
interpolate: CMakeFiles/interpolate.dir/interpolator.cpp.o
interpolate: CMakeFiles/interpolate.dir/quaternion.cpp.o
interpolate: CMakeFiles/interpolate.dir/interpolate.cpp.o
interpolate: CMakeFiles/interpolate.dir/build.make
interpolate: /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/lib/libfltk.a
interpolate: /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/lib/libfltk_gl.a
interpolate: /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/lib/libfltk.a
interpolate: /usr/lib/libdl.dylib
interpolate: CMakeFiles/interpolate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable interpolate"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/interpolate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/interpolate.dir/build: interpolate

.PHONY : CMakeFiles/interpolate.dir/build

CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/motion.cpp.o.requires
CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/posture.cpp.o.requires
CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/skeleton.cpp.o.requires
CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/transform.cpp.o.requires
CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/vector.cpp.o.requires
CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/interpolator.cpp.o.requires
CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/quaternion.cpp.o.requires
CMakeFiles/interpolate.dir/requires: CMakeFiles/interpolate.dir/interpolate.cpp.o.requires

.PHONY : CMakeFiles/interpolate.dir/requires

CMakeFiles/interpolate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/interpolate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/interpolate.dir/clean

CMakeFiles/interpolate.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug /Users/charlesfoxw/Documents/ClionProjects/Project_2/mocapPlayer-starter/cmake-build-debug/CMakeFiles/interpolate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/interpolate.dir/depend

