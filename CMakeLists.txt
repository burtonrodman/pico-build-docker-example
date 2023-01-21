cmake_minimum_required(VERSION 3.13)

set(PICO_BOARD pico_w)

# Import Pico SDK
include(pico_sdk_import.cmake)

project(main C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialize the SDK
pico_sdk_init()

add_subdirectory(main)