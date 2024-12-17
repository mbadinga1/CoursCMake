#lancer le build
# creer un dossier build et aller dans le dossier 
# mkdir build && cd build
# configurer et build
# cmake ..
# make ou cmake --build .
# lancer executable
# ./Exec


cmake_minimum_required(VERSION 3.22)
project(TemperatureProjet 
        VERSION 1.0.0
        DESCRIPTION "Conversion de température"
        LANGUAGES C CXX
        )
set(EXEC_NAME Exec)
set(LIB_KELVIN Library)

add_library(${LIB_KELVIN} STATIC kelvin.cpp)
add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} ${LIB_KELVIN})

