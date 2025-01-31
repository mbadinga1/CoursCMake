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
set(LIB_HEADERS LibH)
set(STB_IMAGE LibI)
set(Exec Main)
add_subdirectory(header)
add_subdirectory(src)
