# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aminul/Documents/soil_model_running

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aminul/Documents/soil_model_running/build

# Include any dependencies generated for this target.
include compiled_eigen/test/CMakeFiles/first_aligned.dir/depend.make

# Include the progress variables for this target.
include compiled_eigen/test/CMakeFiles/first_aligned.dir/progress.make

# Include the compile flags for this target's objects.
include compiled_eigen/test/CMakeFiles/first_aligned.dir/flags.make

compiled_eigen/test/CMakeFiles/first_aligned.dir/first_aligned.cpp.o: compiled_eigen/test/CMakeFiles/first_aligned.dir/flags.make
compiled_eigen/test/CMakeFiles/first_aligned.dir/first_aligned.cpp.o: ../res/eigen-3.4.0/test/first_aligned.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object compiled_eigen/test/CMakeFiles/first_aligned.dir/first_aligned.cpp.o"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/first_aligned.dir/first_aligned.cpp.o -c /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test/first_aligned.cpp

compiled_eigen/test/CMakeFiles/first_aligned.dir/first_aligned.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/first_aligned.dir/first_aligned.cpp.i"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test/first_aligned.cpp > CMakeFiles/first_aligned.dir/first_aligned.cpp.i

compiled_eigen/test/CMakeFiles/first_aligned.dir/first_aligned.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/first_aligned.dir/first_aligned.cpp.s"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test/first_aligned.cpp -o CMakeFiles/first_aligned.dir/first_aligned.cpp.s

# Object files for target first_aligned
first_aligned_OBJECTS = \
"CMakeFiles/first_aligned.dir/first_aligned.cpp.o"

# External object files for target first_aligned
first_aligned_EXTERNAL_OBJECTS =

../bin/first_aligned: compiled_eigen/test/CMakeFiles/first_aligned.dir/first_aligned.cpp.o
../bin/first_aligned: compiled_eigen/test/CMakeFiles/first_aligned.dir/build.make
../bin/first_aligned: compiled_eigen/test/CMakeFiles/first_aligned.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/first_aligned"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/first_aligned.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
compiled_eigen/test/CMakeFiles/first_aligned.dir/build: ../bin/first_aligned

.PHONY : compiled_eigen/test/CMakeFiles/first_aligned.dir/build

compiled_eigen/test/CMakeFiles/first_aligned.dir/clean:
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && $(CMAKE_COMMAND) -P CMakeFiles/first_aligned.dir/cmake_clean.cmake
.PHONY : compiled_eigen/test/CMakeFiles/first_aligned.dir/clean

compiled_eigen/test/CMakeFiles/first_aligned.dir/depend:
	cd /home/aminul/Documents/soil_model_running/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aminul/Documents/soil_model_running /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test /home/aminul/Documents/soil_model_running/build /home/aminul/Documents/soil_model_running/build/compiled_eigen/test /home/aminul/Documents/soil_model_running/build/compiled_eigen/test/CMakeFiles/first_aligned.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : compiled_eigen/test/CMakeFiles/first_aligned.dir/depend

