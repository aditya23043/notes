# min level of CMake required to generate the makefile
# also returns FATAL_ERROR if version less than mentioned in arg
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

# name of the project with the language besides it
project(database_c C)

# Set the project source dir (just convention)
set( CMAKE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR} )
set( CMAKE_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR} )

# Current version of project; 1.0.0 here
set (CMAKE_VERSION_MAJOR 1)
set (CMAKE_VERSION_MINOR 0)
set (CMAKE_VERSION_PATCH 0)

set (CMAKE_SOURCES
    src/main.c
)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_executable( ${PROJECT_NAME} ${CMAKE_SOURCES} )
