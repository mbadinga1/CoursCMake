#lancer le build
# creer un dossier build et aller dans le dossier 
# mkdir build && cd build
# configurer et build
# cmake ..
# make ou cmake --build .
# lancer executable
# ./Exec
# clean 
# cmake --build . --target clean


cmake_minimum_required(VERSION 3.22)
project(CppProject 
        VERSION 1.0.0
        DESCRIPTION "Conversion de température"
        LANGUAGES C CXX
        )
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(EXEC_NAME Exec)
set(LIB_NAME LibK)
set(LIB_FAHREN LibF)

option(COMPILE_APP "compile code application" OFF)

add_subdirectory(src)
if(COMPILE_APP)
        add_subdirectory(app)
endif()
