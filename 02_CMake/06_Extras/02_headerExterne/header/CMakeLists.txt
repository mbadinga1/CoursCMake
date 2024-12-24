find_package(PythonLibs REQUIRED)
add_library(matplotlibcpp INTERFACE)
target_include_directories(matplotlibcpp INTERFACE  
                        ${CMAKE_CURRENT_SOURCE_DIR} ${PYTHON_INCLUDE_DIRS}
                        )
target_link_directories(matplotlibcpp INTERFACE ${PYTHON_LIBRAIRIES})

