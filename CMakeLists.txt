cmake_minimum_required(VERSION 3.13)

# CHECK THESE PROPERTIES
set(PICO_BOARD pico_w CACHE STRING "Board type")
set(target_project docker_example)


include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

if (PICO_SDK_VERSION_STRING VERSION_LESS "1.4.0")
  message(FATAL_ERROR "Raspberry Pi Pico SDK version 1.4.0 (or later) required. Your version is ${PICO_SDK_VERSION_STRING}")
endif()

project(${target_project} C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(${target_project})

target_sources(${target_project} PUBLIC
    main.c
)

target_link_libraries(
    ${target_project} 
    pico_stdlib
    pico_cyw43_arch_none
)

pico_add_extra_outputs(${target_project})