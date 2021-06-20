## Include this file if you want to use the jsoncpp library
## in YOUR (Pico) project.

cmake_minimum_required(VERSION 3.12)

# Define the jsoncpp library
add_library(jsoncpp INTERFACE)

target_sources(jsoncpp INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/src/lib_json/json_reader.cpp
    ${CMAKE_CURRENT_LIST_DIR}/src/lib_json/json_value.cpp
    ${CMAKE_CURRENT_LIST_DIR}/src/lib_json/json_writer.cpp
)

target_include_directories(jsoncpp INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/include/
)
