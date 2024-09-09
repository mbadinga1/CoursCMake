
# 1- creer un dossier build mkdir build
# 2- cmake ..
# 3- make / cmake --build .
cmake_minimum_required(VERSION 3.22)
project(
    CppProject
    VERSION 1.0.0
    LANGUAGES C CXX)
add_library(myLib STATIC library/lib.cpp)

add_executable(Exec app/main.cpp)

target_link_libraries(Exec PUBLIC myLib)
