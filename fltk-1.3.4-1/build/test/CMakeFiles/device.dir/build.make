# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build

# Include any dependencies generated for this target.
include test/CMakeFiles/device.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/device.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/device.dir/flags.make

test/CMakeFiles/device.dir/device.cxx.o: test/CMakeFiles/device.dir/flags.make
test/CMakeFiles/device.dir/device.cxx.o: ../test/device.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/device.dir/device.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/device.dir/device.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/device.cxx

test/CMakeFiles/device.dir/device.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/device.dir/device.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/device.cxx > CMakeFiles/device.dir/device.cxx.i

test/CMakeFiles/device.dir/device.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/device.dir/device.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/device.cxx -o CMakeFiles/device.dir/device.cxx.s

test/CMakeFiles/device.dir/device.cxx.o.requires:

.PHONY : test/CMakeFiles/device.dir/device.cxx.o.requires

test/CMakeFiles/device.dir/device.cxx.o.provides: test/CMakeFiles/device.dir/device.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/device.dir/build.make test/CMakeFiles/device.dir/device.cxx.o.provides.build
.PHONY : test/CMakeFiles/device.dir/device.cxx.o.provides

test/CMakeFiles/device.dir/device.cxx.o.provides.build: test/CMakeFiles/device.dir/device.cxx.o


# Object files for target device
device_OBJECTS = \
"CMakeFiles/device.dir/device.cxx.o"

# External object files for target device
device_EXTERNAL_OBJECTS =

bin/examples/device.app/Contents/MacOS/device: test/CMakeFiles/device.dir/device.cxx.o
bin/examples/device.app/Contents/MacOS/device: test/CMakeFiles/device.dir/build.make
bin/examples/device.app/Contents/MacOS/device: lib/libfltk.a
bin/examples/device.app/Contents/MacOS/device: /usr/lib/libdl.dylib
bin/examples/device.app/Contents/MacOS/device: test/CMakeFiles/device.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/examples/device.app/Contents/MacOS/device"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/device.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/device.dir/build: bin/examples/device.app/Contents/MacOS/device

.PHONY : test/CMakeFiles/device.dir/build

test/CMakeFiles/device.dir/requires: test/CMakeFiles/device.dir/device.cxx.o.requires

.PHONY : test/CMakeFiles/device.dir/requires

test/CMakeFiles/device.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/device.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/device.dir/clean

test/CMakeFiles/device.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/device.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/device.dir/depend
