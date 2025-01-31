cmake_minimum_required(VERSION 3.22)
project(CrossCompilation
        VERSION 1.0.0
        LANGUAGES C CXX)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_library(exemple STATIC  "${CMAKE_CURRENT_SOURCE_DIR}/src/test.cpp")