set(test "stb_image.h")
# add_library(${LIB_HEADERS} INTERFACE)
add_library(${STB_IMAGE} INTERFACE)

# target_include_directories(${LIB_HEADERS}  INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(${STB_IMAGE}  INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})


# target_include_directories(${STB_IMAGE}  INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})