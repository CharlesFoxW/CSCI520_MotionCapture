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
include test/CMakeFiles/fractals.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/fractals.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/fractals.dir/flags.make

test/CMakeFiles/fractals.dir/fractals.cxx.o: test/CMakeFiles/fractals.dir/flags.make
test/CMakeFiles/fractals.dir/fractals.cxx.o: ../test/fractals.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/fractals.dir/fractals.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fractals.dir/fractals.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/fractals.cxx

test/CMakeFiles/fractals.dir/fractals.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fractals.dir/fractals.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/fractals.cxx > CMakeFiles/fractals.dir/fractals.cxx.i

test/CMakeFiles/fractals.dir/fractals.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fractals.dir/fractals.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/fractals.cxx -o CMakeFiles/fractals.dir/fractals.cxx.s

test/CMakeFiles/fractals.dir/fractals.cxx.o.requires:

.PHONY : test/CMakeFiles/fractals.dir/fractals.cxx.o.requires

test/CMakeFiles/fractals.dir/fractals.cxx.o.provides: test/CMakeFiles/fractals.dir/fractals.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/fractals.dir/build.make test/CMakeFiles/fractals.dir/fractals.cxx.o.provides.build
.PHONY : test/CMakeFiles/fractals.dir/fractals.cxx.o.provides

test/CMakeFiles/fractals.dir/fractals.cxx.o.provides.build: test/CMakeFiles/fractals.dir/fractals.cxx.o


test/CMakeFiles/fractals.dir/fracviewer.cxx.o: test/CMakeFiles/fractals.dir/flags.make
test/CMakeFiles/fractals.dir/fracviewer.cxx.o: ../test/fracviewer.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/fractals.dir/fracviewer.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fractals.dir/fracviewer.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/fracviewer.cxx

test/CMakeFiles/fractals.dir/fracviewer.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fractals.dir/fracviewer.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/fracviewer.cxx > CMakeFiles/fractals.dir/fracviewer.cxx.i

test/CMakeFiles/fractals.dir/fracviewer.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fractals.dir/fracviewer.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/fracviewer.cxx -o CMakeFiles/fractals.dir/fracviewer.cxx.s

test/CMakeFiles/fractals.dir/fracviewer.cxx.o.requires:

.PHONY : test/CMakeFiles/fractals.dir/fracviewer.cxx.o.requires

test/CMakeFiles/fractals.dir/fracviewer.cxx.o.provides: test/CMakeFiles/fractals.dir/fracviewer.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/fractals.dir/build.make test/CMakeFiles/fractals.dir/fracviewer.cxx.o.provides.build
.PHONY : test/CMakeFiles/fractals.dir/fracviewer.cxx.o.provides

test/CMakeFiles/fractals.dir/fracviewer.cxx.o.provides.build: test/CMakeFiles/fractals.dir/fracviewer.cxx.o


# Object files for target fractals
fractals_OBJECTS = \
"CMakeFiles/fractals.dir/fractals.cxx.o" \
"CMakeFiles/fractals.dir/fracviewer.cxx.o"

# External object files for target fractals
fractals_EXTERNAL_OBJECTS =

bin/examples/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/fractals.cxx.o
bin/examples/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/fracviewer.cxx.o
bin/examples/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/build.make
bin/examples/fractals.app/Contents/MacOS/fractals: lib/libfltk.a
bin/examples/fractals.app/Contents/MacOS/fractals: lib/libfltk_gl.a
bin/examples/fractals.app/Contents/MacOS/fractals: lib/libfltk.a
bin/examples/fractals.app/Contents/MacOS/fractals: /usr/lib/libdl.dylib
bin/examples/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/examples/fractals.app/Contents/MacOS/fractals"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fractals.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/fractals.dir/build: bin/examples/fractals.app/Contents/MacOS/fractals

.PHONY : test/CMakeFiles/fractals.dir/build

test/CMakeFiles/fractals.dir/requires: test/CMakeFiles/fractals.dir/fractals.cxx.o.requires
test/CMakeFiles/fractals.dir/requires: test/CMakeFiles/fractals.dir/fracviewer.cxx.o.requires

.PHONY : test/CMakeFiles/fractals.dir/requires

test/CMakeFiles/fractals.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/fractals.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/fractals.dir/clean

test/CMakeFiles/fractals.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/fractals.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/fractals.dir/depend
