# creer un dossier build  et entrer dans le dossier 
# mkdir build && cd build
# lancer la config
# cmake ..
# lancer build 
# make ou cmake --build . 
# lancer l'executable
# ./Exec
cmake_minimum_required(VERSION 3.22)
project(CppProject
        VERSION 1.0.0
        DESCRIPTION "Conversion de temperature"
        LANGUAGES C CXX
        )
set(EXEC_NAME Executable)
set(LIB_NAME Library)


add_library(${LIB_NAME} STATIC  kelvin.cpp)
add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} ${LIB_NAME})
