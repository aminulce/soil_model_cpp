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
include compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/depend.make

# Include the progress variables for this target.
include compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/progress.make

# Include the compile flags for this target's objects.
include compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/flags.make

compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/matrix_power.cpp.o: compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/flags.make
compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/matrix_power.cpp.o: ../res/eigen-3.4.0/unsupported/test/matrix_power.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/matrix_power.cpp.o"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/unsupported/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix_power_2.dir/matrix_power.cpp.o -c /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/unsupported/test/matrix_power.cpp

compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/matrix_power.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_power_2.dir/matrix_power.cpp.i"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/unsupported/test/matrix_power.cpp > CMakeFiles/matrix_power_2.dir/matrix_power.cpp.i

compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/matrix_power.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_power_2.dir/matrix_power.cpp.s"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/unsupported/test/matrix_power.cpp -o CMakeFiles/matrix_power_2.dir/matrix_power.cpp.s

# Object files for target matrix_power_2
matrix_power_2_OBJECTS = \
"CMakeFiles/matrix_power_2.dir/matrix_power.cpp.o"

# External object files for target matrix_power_2
matrix_power_2_EXTERNAL_OBJECTS =

../bin/matrix_power_2: compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/matrix_power.cpp.o
../bin/matrix_power_2: compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/build.make
../bin/matrix_power_2: compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/matrix_power_2"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_power_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/build: ../bin/matrix_power_2

.PHONY : compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/build

compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/clean:
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/matrix_power_2.dir/cmake_clean.cmake
.PHONY : compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/clean

compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/depend:
	cd /home/aminul/Documents/soil_model_running/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aminul/Documents/soil_model_running /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/unsupported/test /home/aminul/Documents/soil_model_running/build /home/aminul/Documents/soil_model_running/build/compiled_eigen/unsupported/test /home/aminul/Documents/soil_model_running/build/compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : compiled_eigen/unsupported/test/CMakeFiles/matrix_power_2.dir/depend

