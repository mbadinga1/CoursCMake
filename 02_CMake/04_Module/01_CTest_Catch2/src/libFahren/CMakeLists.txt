set(LIB_SOURCES "fahren.cpp")

set(LIB_INCLUDES 
    fahren.h
    )

add_library(${LIB_FAHREN} STATIC ${LIB_SOURCES} ${LIB_INCLUDES})
target_include_directories(${LIB_FAHREN} PUBLIC 
                            "./"
                            "${CMAKE_BINARY_DIR}/configure_files/include"
                            )
