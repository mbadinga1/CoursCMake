
# 1- creer un dossier build mkdir build
# 2- cmake ..
# 3- make / cmake --build .
cmake_minimum_required(VERSION 3.22)
project(
    CppProject
    VERSION 1.0.0
    LANGUAGES C CXX)

add_subdirectory(app)
add_subdirectory(src)
