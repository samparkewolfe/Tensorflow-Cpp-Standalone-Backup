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
include unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/flags.make

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o: unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/flags.make
unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o: ../unsupported/test/cxx11_tensor_layout_swap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eigen-eigen-5a0156e40feb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o"
	cd /home/eigen-eigen-5a0156e40feb/build/unsupported/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o -c /home/eigen-eigen-5a0156e40feb/unsupported/test/cxx11_tensor_layout_swap.cpp

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.i"
	cd /home/eigen-eigen-5a0156e40feb/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eigen-eigen-5a0156e40feb/unsupported/test/cxx11_tensor_layout_swap.cpp > CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.i

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.s"
	cd /home/eigen-eigen-5a0156e40feb/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eigen-eigen-5a0156e40feb/unsupported/test/cxx11_tensor_layout_swap.cpp -o CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.s

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.requires:

.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.requires

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.provides: unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.requires
	$(MAKE) -f unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/build.make unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.provides.build
.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.provides

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.provides.build: unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o


# Object files for target cxx11_tensor_layout_swap
cxx11_tensor_layout_swap_OBJECTS = \
"CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o"

# External object files for target cxx11_tensor_layout_swap
cxx11_tensor_layout_swap_EXTERNAL_OBJECTS =

unsupported/test/cxx11_tensor_layout_swap: unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o
unsupported/test/cxx11_tensor_layout_swap: unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/build.make
unsupported/test/cxx11_tensor_layout_swap: unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eigen-eigen-5a0156e40feb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cxx11_tensor_layout_swap"
	cd /home/eigen-eigen-5a0156e40feb/build/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cxx11_tensor_layout_swap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/build: unsupported/test/cxx11_tensor_layout_swap

.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/build

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/requires: unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/cxx11_tensor_layout_swap.cpp.o.requires

.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/requires

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/clean:
	cd /home/eigen-eigen-5a0156e40feb/build/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/cxx11_tensor_layout_swap.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/clean

unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/depend:
	cd /home/eigen-eigen-5a0156e40feb/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eigen-eigen-5a0156e40feb /home/eigen-eigen-5a0156e40feb/unsupported/test /home/eigen-eigen-5a0156e40feb/build /home/eigen-eigen-5a0156e40feb/build/unsupported/test /home/eigen-eigen-5a0156e40feb/build/unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_layout_swap.dir/depend

