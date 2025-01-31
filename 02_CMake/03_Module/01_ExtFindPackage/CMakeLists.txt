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

set(EXEC_NAME Executable)
set(LIB_NAME LibK)
set(LIB_FAHREN LibF)
set(INSTALL_PATH "/usr/local/" CACHE PATH "chemin pour installer le binaire")

option(COMPILE_APP "compile code application" ON)
option(ENABLE_DEBUG "Activer le debug" OFF)

# set(nlohmann_json_DIR "${CMAKE_SOURCE_DIR}/nlohmann_json/cmake")
list(APPEND CMAKE_PREFIX_PATH  "${CMAKE_SOURCE_DIR}/nlohmann_json/cmake")

find_package(nlohmann_json 3.11.3 REQUIRED)

if(ENABLE_DEBUG)
        message(STATUS "Mode debug activé")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
else()
        message(STATUS "Mode debug desactivé")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")
endif()

add_subdirectory(configure)
if(COMPILE_APP)
       add_subdirectory(app)
endif()
add_subdirectory(src)


