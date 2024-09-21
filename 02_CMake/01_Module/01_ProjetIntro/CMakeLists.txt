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
add_executable(Exec main.cpp)
