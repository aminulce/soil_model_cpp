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
include compiled_eigen/test/CMakeFiles/redux_4.dir/depend.make

# Include the progress variables for this target.
include compiled_eigen/test/CMakeFiles/redux_4.dir/progress.make

# Include the compile flags for this target's objects.
include compiled_eigen/test/CMakeFiles/redux_4.dir/flags.make

compiled_eigen/test/CMakeFiles/redux_4.dir/redux.cpp.o: compiled_eigen/test/CMakeFiles/redux_4.dir/flags.make
compiled_eigen/test/CMakeFiles/redux_4.dir/redux.cpp.o: ../res/eigen-3.4.0/test/redux.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object compiled_eigen/test/CMakeFiles/redux_4.dir/redux.cpp.o"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/redux_4.dir/redux.cpp.o -c /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test/redux.cpp

compiled_eigen/test/CMakeFiles/redux_4.dir/redux.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/redux_4.dir/redux.cpp.i"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test/redux.cpp > CMakeFiles/redux_4.dir/redux.cpp.i

compiled_eigen/test/CMakeFiles/redux_4.dir/redux.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/redux_4.dir/redux.cpp.s"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test/redux.cpp -o CMakeFiles/redux_4.dir/redux.cpp.s

# Object files for target redux_4
redux_4_OBJECTS = \
"CMakeFiles/redux_4.dir/redux.cpp.o"

# External object files for target redux_4
redux_4_EXTERNAL_OBJECTS =

../bin/redux_4: compiled_eigen/test/CMakeFiles/redux_4.dir/redux.cpp.o
../bin/redux_4: compiled_eigen/test/CMakeFiles/redux_4.dir/build.make
../bin/redux_4: compiled_eigen/test/CMakeFiles/redux_4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/redux_4"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/redux_4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
compiled_eigen/test/CMakeFiles/redux_4.dir/build: ../bin/redux_4

.PHONY : compiled_eigen/test/CMakeFiles/redux_4.dir/build

compiled_eigen/test/CMakeFiles/redux_4.dir/clean:
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/test && $(CMAKE_COMMAND) -P CMakeFiles/redux_4.dir/cmake_clean.cmake
.PHONY : compiled_eigen/test/CMakeFiles/redux_4.dir/clean

compiled_eigen/test/CMakeFiles/redux_4.dir/depend:
	cd /home/aminul/Documents/soil_model_running/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aminul/Documents/soil_model_running /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/test /home/aminul/Documents/soil_model_running/build /home/aminul/Documents/soil_model_running/build/compiled_eigen/test /home/aminul/Documents/soil_model_running/build/compiled_eigen/test/CMakeFiles/redux_4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : compiled_eigen/test/CMakeFiles/redux_4.dir/depend

