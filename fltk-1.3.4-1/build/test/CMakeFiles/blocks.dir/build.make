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
include test/CMakeFiles/blocks.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/blocks.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/blocks.dir/flags.make

bin/examples/blocks.app/Contents/Resources/blocks.icns: ../test/blocks.app/Contents/Resources/blocks.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content bin/examples/blocks.app/Contents/Resources/blocks.icns"
	$(CMAKE_COMMAND) -E copy /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/blocks.app/Contents/Resources/blocks.icns bin/examples/blocks.app/Contents/Resources/blocks.icns

test/CMakeFiles/blocks.dir/blocks.cxx.o: test/CMakeFiles/blocks.dir/flags.make
test/CMakeFiles/blocks.dir/blocks.cxx.o: ../test/blocks.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/blocks.dir/blocks.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/blocks.dir/blocks.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/blocks.cxx

test/CMakeFiles/blocks.dir/blocks.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blocks.dir/blocks.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/blocks.cxx > CMakeFiles/blocks.dir/blocks.cxx.i

test/CMakeFiles/blocks.dir/blocks.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blocks.dir/blocks.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/blocks.cxx -o CMakeFiles/blocks.dir/blocks.cxx.s

test/CMakeFiles/blocks.dir/blocks.cxx.o.requires:

.PHONY : test/CMakeFiles/blocks.dir/blocks.cxx.o.requires

test/CMakeFiles/blocks.dir/blocks.cxx.o.provides: test/CMakeFiles/blocks.dir/blocks.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/blocks.dir/build.make test/CMakeFiles/blocks.dir/blocks.cxx.o.provides.build
.PHONY : test/CMakeFiles/blocks.dir/blocks.cxx.o.provides

test/CMakeFiles/blocks.dir/blocks.cxx.o.provides.build: test/CMakeFiles/blocks.dir/blocks.cxx.o


# Object files for target blocks
blocks_OBJECTS = \
"CMakeFiles/blocks.dir/blocks.cxx.o"

# External object files for target blocks
blocks_EXTERNAL_OBJECTS =

bin/examples/blocks.app/Contents/MacOS/blocks: test/CMakeFiles/blocks.dir/blocks.cxx.o
bin/examples/blocks.app/Contents/MacOS/blocks: test/CMakeFiles/blocks.dir/build.make
bin/examples/blocks.app/Contents/MacOS/blocks: lib/libfltk.a
bin/examples/blocks.app/Contents/MacOS/blocks: /usr/lib/libdl.dylib
bin/examples/blocks.app/Contents/MacOS/blocks: test/CMakeFiles/blocks.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/examples/blocks.app/Contents/MacOS/blocks"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blocks.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/blocks.dir/build: bin/examples/blocks.app/Contents/MacOS/blocks
test/CMakeFiles/blocks.dir/build: bin/examples/blocks.app/Contents/Resources/blocks.icns

.PHONY : test/CMakeFiles/blocks.dir/build

test/CMakeFiles/blocks.dir/requires: test/CMakeFiles/blocks.dir/blocks.cxx.o.requires

.PHONY : test/CMakeFiles/blocks.dir/requires

test/CMakeFiles/blocks.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/blocks.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/blocks.dir/clean

test/CMakeFiles/blocks.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/blocks.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/blocks.dir/depend

