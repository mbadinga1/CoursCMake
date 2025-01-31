
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
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


set(JSON_BuildTests OFF CACHE INTERNAL "")
add_subdirectory(Externe)

set(EXEC_NAME Executable)
set(LIB_KELVIN LibK)
set(LIB_FAHREN LibF)
        
add_subdirectory(app)
add_subdirectory(src)
