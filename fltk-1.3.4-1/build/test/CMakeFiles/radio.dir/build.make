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
include test/CMakeFiles/radio.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/radio.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/radio.dir/flags.make

test/radio.cxx: ../test/radio.fl
test/radio.cxx: ../test/radio.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating radio.cxx, radio.h"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && ../bin/fluid.app/Contents/MacOS/fluid -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/radio.fl

test/radio.h: test/radio.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test/radio.h

test/CMakeFiles/radio.dir/radio.cxx.o: test/CMakeFiles/radio.dir/flags.make
test/CMakeFiles/radio.dir/radio.cxx.o: test/radio.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/radio.dir/radio.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/radio.dir/radio.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/radio.cxx

test/CMakeFiles/radio.dir/radio.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/radio.dir/radio.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/radio.cxx > CMakeFiles/radio.dir/radio.cxx.i

test/CMakeFiles/radio.dir/radio.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/radio.dir/radio.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/radio.cxx -o CMakeFiles/radio.dir/radio.cxx.s

test/CMakeFiles/radio.dir/radio.cxx.o.requires:

.PHONY : test/CMakeFiles/radio.dir/radio.cxx.o.requires

test/CMakeFiles/radio.dir/radio.cxx.o.provides: test/CMakeFiles/radio.dir/radio.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/radio.dir/build.make test/CMakeFiles/radio.dir/radio.cxx.o.provides.build
.PHONY : test/CMakeFiles/radio.dir/radio.cxx.o.provides

test/CMakeFiles/radio.dir/radio.cxx.o.provides.build: test/CMakeFiles/radio.dir/radio.cxx.o


# Object files for target radio
radio_OBJECTS = \
"CMakeFiles/radio.dir/radio.cxx.o"

# External object files for target radio
radio_EXTERNAL_OBJECTS =

bin/examples/radio.app/Contents/MacOS/radio: test/CMakeFiles/radio.dir/radio.cxx.o
bin/examples/radio.app/Contents/MacOS/radio: test/CMakeFiles/radio.dir/build.make
bin/examples/radio.app/Contents/MacOS/radio: lib/libfltk.a
bin/examples/radio.app/Contents/MacOS/radio: /usr/lib/libdl.dylib
bin/examples/radio.app/Contents/MacOS/radio: test/CMakeFiles/radio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/examples/radio.app/Contents/MacOS/radio"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/radio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/radio.dir/build: bin/examples/radio.app/Contents/MacOS/radio

.PHONY : test/CMakeFiles/radio.dir/build

test/CMakeFiles/radio.dir/requires: test/CMakeFiles/radio.dir/radio.cxx.o.requires

.PHONY : test/CMakeFiles/radio.dir/requires

test/CMakeFiles/radio.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/radio.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/radio.dir/clean

test/CMakeFiles/radio.dir/depend: test/radio.cxx
test/CMakeFiles/radio.dir/depend: test/radio.h
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/radio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/radio.dir/depend

