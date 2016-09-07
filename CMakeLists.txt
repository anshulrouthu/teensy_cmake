
cmake_minimum_required(VERSION 2.8.4)
project(teensy)

list(APPEND SRC_INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/cores/teensy3)
list(APPEND SRC_INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/cores/teensy3/avr)
list(APPEND SRC_INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/cores/teensy3/util)

file(GLOB_RECURSE SDK_CORE_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/cores/teensy3/*.c
    ${CMAKE_CURRENT_SOURCE_DIR}/cores/teensy3/*.cpp
    )

include_directories(${SRC_INC_DIR})
add_library(teensy ${SDK_CORE_SRC})
