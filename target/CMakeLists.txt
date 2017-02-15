cmake_minimum_required(VERSION 2.8)
add_definitions("-Wall -std=c++11")
set(CMAKE_BUILD_TYPE Debug)
add_executable(sample
    sample.cpp
    myadd.cpp
)
