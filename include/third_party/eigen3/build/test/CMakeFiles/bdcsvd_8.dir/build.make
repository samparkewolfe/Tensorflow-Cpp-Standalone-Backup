# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eigen-eigen-5a0156e40feb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eigen-eigen-5a0156e40feb/build

# Include any dependencies generated for this target.
include test/CMakeFiles/bdcsvd_8.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/bdcsvd_8.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/bdcsvd_8.dir/flags.make

test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o: test/CMakeFiles/bdcsvd_8.dir/flags.make
test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o: ../test/bdcsvd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eigen-eigen-5a0156e40feb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o"
	cd /home/eigen-eigen-5a0156e40feb/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o -c /home/eigen-eigen-5a0156e40feb/test/bdcsvd.cpp

test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.i"
	cd /home/eigen-eigen-5a0156e40feb/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eigen-eigen-5a0156e40feb/test/bdcsvd.cpp > CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.i

test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.s"
	cd /home/eigen-eigen-5a0156e40feb/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eigen-eigen-5a0156e40feb/test/bdcsvd.cpp -o CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.s

test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.requires:

.PHONY : test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.requires

test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.provides: test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/bdcsvd_8.dir/build.make test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.provides.build
.PHONY : test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.provides

test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.provides.build: test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o


# Object files for target bdcsvd_8
bdcsvd_8_OBJECTS = \
"CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o"

# External object files for target bdcsvd_8
bdcsvd_8_EXTERNAL_OBJECTS =

test/bdcsvd_8: test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o
test/bdcsvd_8: test/CMakeFiles/bdcsvd_8.dir/build.make
test/bdcsvd_8: test/CMakeFiles/bdcsvd_8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eigen-eigen-5a0156e40feb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bdcsvd_8"
	cd /home/eigen-eigen-5a0156e40feb/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bdcsvd_8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/bdcsvd_8.dir/build: test/bdcsvd_8

.PHONY : test/CMakeFiles/bdcsvd_8.dir/build

test/CMakeFiles/bdcsvd_8.dir/requires: test/CMakeFiles/bdcsvd_8.dir/bdcsvd.cpp.o.requires

.PHONY : test/CMakeFiles/bdcsvd_8.dir/requires

test/CMakeFiles/bdcsvd_8.dir/clean:
	cd /home/eigen-eigen-5a0156e40feb/build/test && $(CMAKE_COMMAND) -P CMakeFiles/bdcsvd_8.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/bdcsvd_8.dir/clean

test/CMakeFiles/bdcsvd_8.dir/depend:
	cd /home/eigen-eigen-5a0156e40feb/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eigen-eigen-5a0156e40feb /home/eigen-eigen-5a0156e40feb/test /home/eigen-eigen-5a0156e40feb/build /home/eigen-eigen-5a0156e40feb/build/test /home/eigen-eigen-5a0156e40feb/build/test/CMakeFiles/bdcsvd_8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/bdcsvd_8.dir/depend
