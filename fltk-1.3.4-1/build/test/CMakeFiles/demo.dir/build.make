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
include test/CMakeFiles/demo.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/demo.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/demo.dir/flags.make

bin/examples/demo.app/Contents/Resources/demo.menu: ../test/demo.menu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content bin/examples/demo.app/Contents/Resources/demo.menu"
	$(CMAKE_COMMAND) -E copy /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/demo.menu bin/examples/demo.app/Contents/Resources/demo.menu

test/CMakeFiles/demo.dir/demo.cxx.o: test/CMakeFiles/demo.dir/flags.make
test/CMakeFiles/demo.dir/demo.cxx.o: ../test/demo.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/demo.dir/demo.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/demo.dir/demo.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/demo.cxx

test/CMakeFiles/demo.dir/demo.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/demo.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/demo.cxx > CMakeFiles/demo.dir/demo.cxx.i

test/CMakeFiles/demo.dir/demo.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/demo.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/demo.cxx -o CMakeFiles/demo.dir/demo.cxx.s

test/CMakeFiles/demo.dir/demo.cxx.o.requires:

.PHONY : test/CMakeFiles/demo.dir/demo.cxx.o.requires

test/CMakeFiles/demo.dir/demo.cxx.o.provides: test/CMakeFiles/demo.dir/demo.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/demo.dir/build.make test/CMakeFiles/demo.dir/demo.cxx.o.provides.build
.PHONY : test/CMakeFiles/demo.dir/demo.cxx.o.provides

test/CMakeFiles/demo.dir/demo.cxx.o.provides.build: test/CMakeFiles/demo.dir/demo.cxx.o


# Object files for target demo
demo_OBJECTS = \
"CMakeFiles/demo.dir/demo.cxx.o"

# External object files for target demo
demo_EXTERNAL_OBJECTS =

bin/examples/demo.app/Contents/MacOS/demo: test/CMakeFiles/demo.dir/demo.cxx.o
bin/examples/demo.app/Contents/MacOS/demo: test/CMakeFiles/demo.dir/build.make
bin/examples/demo.app/Contents/MacOS/demo: lib/libfltk.a
bin/examples/demo.app/Contents/MacOS/demo: /usr/lib/libdl.dylib
bin/examples/demo.app/Contents/MacOS/demo: test/CMakeFiles/demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/examples/demo.app/Contents/MacOS/demo"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/demo.dir/build: bin/examples/demo.app/Contents/MacOS/demo
test/CMakeFiles/demo.dir/build: bin/examples/demo.app/Contents/Resources/demo.menu

.PHONY : test/CMakeFiles/demo.dir/build

test/CMakeFiles/demo.dir/requires: test/CMakeFiles/demo.dir/demo.cxx.o.requires

.PHONY : test/CMakeFiles/demo.dir/requires

test/CMakeFiles/demo.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/demo.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/demo.dir/clean

test/CMakeFiles/demo.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/demo.dir/depend

