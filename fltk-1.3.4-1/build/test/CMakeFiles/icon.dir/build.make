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
include test/CMakeFiles/icon.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/icon.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/icon.dir/flags.make

test/CMakeFiles/icon.dir/icon.cxx.o: test/CMakeFiles/icon.dir/flags.make
test/CMakeFiles/icon.dir/icon.cxx.o: ../test/icon.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/icon.dir/icon.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/icon.dir/icon.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/icon.cxx

test/CMakeFiles/icon.dir/icon.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/icon.dir/icon.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/icon.cxx > CMakeFiles/icon.dir/icon.cxx.i

test/CMakeFiles/icon.dir/icon.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/icon.dir/icon.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/icon.cxx -o CMakeFiles/icon.dir/icon.cxx.s

test/CMakeFiles/icon.dir/icon.cxx.o.requires:

.PHONY : test/CMakeFiles/icon.dir/icon.cxx.o.requires

test/CMakeFiles/icon.dir/icon.cxx.o.provides: test/CMakeFiles/icon.dir/icon.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/icon.dir/build.make test/CMakeFiles/icon.dir/icon.cxx.o.provides.build
.PHONY : test/CMakeFiles/icon.dir/icon.cxx.o.provides

test/CMakeFiles/icon.dir/icon.cxx.o.provides.build: test/CMakeFiles/icon.dir/icon.cxx.o


# Object files for target icon
icon_OBJECTS = \
"CMakeFiles/icon.dir/icon.cxx.o"

# External object files for target icon
icon_EXTERNAL_OBJECTS =

bin/examples/icon.app/Contents/MacOS/icon: test/CMakeFiles/icon.dir/icon.cxx.o
bin/examples/icon.app/Contents/MacOS/icon: test/CMakeFiles/icon.dir/build.make
bin/examples/icon.app/Contents/MacOS/icon: lib/libfltk.a
bin/examples/icon.app/Contents/MacOS/icon: /usr/lib/libdl.dylib
bin/examples/icon.app/Contents/MacOS/icon: test/CMakeFiles/icon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/examples/icon.app/Contents/MacOS/icon"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/icon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/icon.dir/build: bin/examples/icon.app/Contents/MacOS/icon

.PHONY : test/CMakeFiles/icon.dir/build

test/CMakeFiles/icon.dir/requires: test/CMakeFiles/icon.dir/icon.cxx.o.requires

.PHONY : test/CMakeFiles/icon.dir/requires

test/CMakeFiles/icon.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/icon.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/icon.dir/clean

test/CMakeFiles/icon.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/icon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/icon.dir/depend

