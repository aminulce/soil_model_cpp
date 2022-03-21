cmake_minimum_required(VERSION 3.10)

# set the project name
project(trial_wedge VERSION 1.0)
add_compile_options(-std=c++14) #optional to use c++14



# Set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

#gathering the sources in SOURCES variable
set(SOURCES eg.cpp Sm_geometry.cpp matrix_manipulate.cpp main.cpp)

add_subdirectory (${CMAKE_SOURCE_DIR}/res/eigen-3.4.0/ compiled_eigen)
find_package (Eigen3 3.4 REQUIRED NO_MODULE)



# add the executable. here the variable SOURCES needs to be dereferences.
#We can do this by using ${}
add_executable("${PROJECT_NAME}" ${SOURCES})




target_link_libraries ("${PROJECT_NAME}" Eigen3::Eigen)







