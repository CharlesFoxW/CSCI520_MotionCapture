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
include test/CMakeFiles/sudoku.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/sudoku.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/sudoku.dir/flags.make

bin/examples/sudoku.app/Contents/Resources/sudoku.icns: ../test/sudoku.app/Contents/Resources/sudoku.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content bin/examples/sudoku.app/Contents/Resources/sudoku.icns"
	$(CMAKE_COMMAND) -E copy /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/sudoku.app/Contents/Resources/sudoku.icns bin/examples/sudoku.app/Contents/Resources/sudoku.icns

test/CMakeFiles/sudoku.dir/sudoku.cxx.o: test/CMakeFiles/sudoku.dir/flags.make
test/CMakeFiles/sudoku.dir/sudoku.cxx.o: ../test/sudoku.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/sudoku.dir/sudoku.cxx.o"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sudoku.dir/sudoku.cxx.o -c /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/sudoku.cxx

test/CMakeFiles/sudoku.dir/sudoku.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sudoku.dir/sudoku.cxx.i"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/sudoku.cxx > CMakeFiles/sudoku.dir/sudoku.cxx.i

test/CMakeFiles/sudoku.dir/sudoku.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sudoku.dir/sudoku.cxx.s"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test/sudoku.cxx -o CMakeFiles/sudoku.dir/sudoku.cxx.s

test/CMakeFiles/sudoku.dir/sudoku.cxx.o.requires:

.PHONY : test/CMakeFiles/sudoku.dir/sudoku.cxx.o.requires

test/CMakeFiles/sudoku.dir/sudoku.cxx.o.provides: test/CMakeFiles/sudoku.dir/sudoku.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/sudoku.dir/build.make test/CMakeFiles/sudoku.dir/sudoku.cxx.o.provides.build
.PHONY : test/CMakeFiles/sudoku.dir/sudoku.cxx.o.provides

test/CMakeFiles/sudoku.dir/sudoku.cxx.o.provides.build: test/CMakeFiles/sudoku.dir/sudoku.cxx.o


# Object files for target sudoku
sudoku_OBJECTS = \
"CMakeFiles/sudoku.dir/sudoku.cxx.o"

# External object files for target sudoku
sudoku_EXTERNAL_OBJECTS =

bin/examples/sudoku.app/Contents/MacOS/sudoku: test/CMakeFiles/sudoku.dir/sudoku.cxx.o
bin/examples/sudoku.app/Contents/MacOS/sudoku: test/CMakeFiles/sudoku.dir/build.make
bin/examples/sudoku.app/Contents/MacOS/sudoku: lib/libfltk.a
bin/examples/sudoku.app/Contents/MacOS/sudoku: lib/libfltk_images.a
bin/examples/sudoku.app/Contents/MacOS/sudoku: lib/libfltk.a
bin/examples/sudoku.app/Contents/MacOS/sudoku: /usr/lib/libdl.dylib
bin/examples/sudoku.app/Contents/MacOS/sudoku: lib/libfltk_jpeg.a
bin/examples/sudoku.app/Contents/MacOS/sudoku: lib/libfltk_png.a
bin/examples/sudoku.app/Contents/MacOS/sudoku: /usr/lib/libz.dylib
bin/examples/sudoku.app/Contents/MacOS/sudoku: test/CMakeFiles/sudoku.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/examples/sudoku.app/Contents/MacOS/sudoku"
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sudoku.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/sudoku.dir/build: bin/examples/sudoku.app/Contents/MacOS/sudoku
test/CMakeFiles/sudoku.dir/build: bin/examples/sudoku.app/Contents/Resources/sudoku.icns

.PHONY : test/CMakeFiles/sudoku.dir/build

test/CMakeFiles/sudoku.dir/requires: test/CMakeFiles/sudoku.dir/sudoku.cxx.o.requires

.PHONY : test/CMakeFiles/sudoku.dir/requires

test/CMakeFiles/sudoku.dir/clean:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test && $(CMAKE_COMMAND) -P CMakeFiles/sudoku.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/sudoku.dir/clean

test/CMakeFiles/sudoku.dir/depend:
	cd /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1 /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test /Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/test/CMakeFiles/sudoku.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/sudoku.dir/depend

