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
include test/CMakeFiles/unittests.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/unittests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/unittests.dir/flags.make

test/CMakeFiles/unittests.dir/unittests.cxx.o: test/CMakeFiles/unittests.dir/flags.make
test/CMakeFiles/unittests.dir/unittests.cxx.o: ../test/unittests.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/unittests.dir/unittests.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unittests.dir/unittests.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/unittests.cxx

test/CMakeFiles/unittests.dir/unittests.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittests.dir/unittests.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/unittests.cxx > CMakeFiles/unittests.dir/unittests.cxx.i

test/CMakeFiles/unittests.dir/unittests.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittests.dir/unittests.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/unittests.cxx -o CMakeFiles/unittests.dir/unittests.cxx.s

test/CMakeFiles/unittests.dir/unittests.cxx.o.requires:

.PHONY : test/CMakeFiles/unittests.dir/unittests.cxx.o.requires

test/CMakeFiles/unittests.dir/unittests.cxx.o.provides: test/CMakeFiles/unittests.dir/unittests.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/unittests.dir/build.make test/CMakeFiles/unittests.dir/unittests.cxx.o.provides.build
.PHONY : test/CMakeFiles/unittests.dir/unittests.cxx.o.provides

test/CMakeFiles/unittests.dir/unittests.cxx.o.provides.build: test/CMakeFiles/unittests.dir/unittests.cxx.o


# Object files for target unittests
unittests_OBJECTS = \
"CMakeFiles/unittests.dir/unittests.cxx.o"

# External object files for target unittests
unittests_EXTERNAL_OBJECTS =

bin/examples/unittests.app/Contents/MacOS/unittests: test/CMakeFiles/unittests.dir/unittests.cxx.o
bin/examples/unittests.app/Contents/MacOS/unittests: test/CMakeFiles/unittests.dir/build.make
bin/examples/unittests.app/Contents/MacOS/unittests: lib/libfltk.a
bin/examples/unittests.app/Contents/MacOS/unittests: /usr/lib/libdl.dylib
bin/examples/unittests.app/Contents/MacOS/unittests: test/CMakeFiles/unittests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/examples/unittests.app/Contents/MacOS/unittests"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unittests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/unittests.dir/build: bin/examples/unittests.app/Contents/MacOS/unittests

.PHONY : test/CMakeFiles/unittests.dir/build

test/CMakeFiles/unittests.dir/requires: test/CMakeFiles/unittests.dir/unittests.cxx.o.requires

.PHONY : test/CMakeFiles/unittests.dir/requires

test/CMakeFiles/unittests.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/unittests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/unittests.dir/clean

test/CMakeFiles/unittests.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/unittests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/unittests.dir/depend
