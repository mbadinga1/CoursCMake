add_library(${LIB_NAME} STATIC  kelvin.cpp)
target_include_directories(${LIB_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
