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
include compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/depend.make

# Include the progress variables for this target.
include compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/progress.make

# Include the compile flags for this target's objects.
include compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/flags.make

compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.o: compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/flags.make
compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.o: compiled_eigen/doc/snippets/compile_IOFormat.cpp
compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.o: ../res/eigen-3.4.0/doc/snippets/IOFormat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.o"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.o -c /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets/compile_IOFormat.cpp

compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.i"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets/compile_IOFormat.cpp > CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.i

compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.s"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets/compile_IOFormat.cpp -o CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.s

# Object files for target compile_IOFormat
compile_IOFormat_OBJECTS = \
"CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.o"

# External object files for target compile_IOFormat
compile_IOFormat_EXTERNAL_OBJECTS =

../bin/compile_IOFormat: compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/compile_IOFormat.cpp.o
../bin/compile_IOFormat: compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/build.make
../bin/compile_IOFormat: compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aminul/Documents/soil_model_running/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/compile_IOFormat"
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_IOFormat.dir/link.txt --verbose=$(VERBOSE)
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets && ../../../../bin/compile_IOFormat >/home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets/IOFormat.out

# Rule to build all files generated by this target.
compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/build: ../bin/compile_IOFormat

.PHONY : compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/build

compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/clean:
	cd /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_IOFormat.dir/cmake_clean.cmake
.PHONY : compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/clean

compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/depend:
	cd /home/aminul/Documents/soil_model_running/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aminul/Documents/soil_model_running /home/aminul/Documents/soil_model_running/res/eigen-3.4.0/doc/snippets /home/aminul/Documents/soil_model_running/build /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets /home/aminul/Documents/soil_model_running/build/compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : compiled_eigen/doc/snippets/CMakeFiles/compile_IOFormat.dir/depend

