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
include test/CMakeFiles/utf8.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/utf8.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/utf8.dir/flags.make

test/CMakeFiles/utf8.dir/utf8.cxx.o: test/CMakeFiles/utf8.dir/flags.make
test/CMakeFiles/utf8.dir/utf8.cxx.o: ../test/utf8.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/utf8.dir/utf8.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utf8.dir/utf8.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/utf8.cxx

test/CMakeFiles/utf8.dir/utf8.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utf8.dir/utf8.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/utf8.cxx > CMakeFiles/utf8.dir/utf8.cxx.i

test/CMakeFiles/utf8.dir/utf8.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utf8.dir/utf8.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/utf8.cxx -o CMakeFiles/utf8.dir/utf8.cxx.s

test/CMakeFiles/utf8.dir/utf8.cxx.o.requires:

.PHONY : test/CMakeFiles/utf8.dir/utf8.cxx.o.requires

test/CMakeFiles/utf8.dir/utf8.cxx.o.provides: test/CMakeFiles/utf8.dir/utf8.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/utf8.dir/build.make test/CMakeFiles/utf8.dir/utf8.cxx.o.provides.build
.PHONY : test/CMakeFiles/utf8.dir/utf8.cxx.o.provides

test/CMakeFiles/utf8.dir/utf8.cxx.o.provides.build: test/CMakeFiles/utf8.dir/utf8.cxx.o


# Object files for target utf8
utf8_OBJECTS = \
"CMakeFiles/utf8.dir/utf8.cxx.o"

# External object files for target utf8
utf8_EXTERNAL_OBJECTS =

bin/examples/utf8.app/Contents/MacOS/utf8: test/CMakeFiles/utf8.dir/utf8.cxx.o
bin/examples/utf8.app/Contents/MacOS/utf8: test/CMakeFiles/utf8.dir/build.make
bin/examples/utf8.app/Contents/MacOS/utf8: lib/libfltk.a
bin/examples/utf8.app/Contents/MacOS/utf8: /usr/lib/libdl.dylib
bin/examples/utf8.app/Contents/MacOS/utf8: test/CMakeFiles/utf8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/examples/utf8.app/Contents/MacOS/utf8"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utf8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/utf8.dir/build: bin/examples/utf8.app/Contents/MacOS/utf8

.PHONY : test/CMakeFiles/utf8.dir/build

test/CMakeFiles/utf8.dir/requires: test/CMakeFiles/utf8.dir/utf8.cxx.o.requires

.PHONY : test/CMakeFiles/utf8.dir/requires

test/CMakeFiles/utf8.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/utf8.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/utf8.dir/clean

test/CMakeFiles/utf8.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/utf8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/utf8.dir/depend
