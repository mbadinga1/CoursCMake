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

set(DCMAKE_BUILD_TYPE Debug)
set(EXEC_NAME Executable)
set(LIB_NAME LibK)
set(LIB_FAHREN LibF)

set(INSTALL_PATH "${CMAKE_CURRENT_SOURCE_DIR}/install" CACHE PATH "chemin pour installer le binaire")
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/)

option(ENABLE_CPM "enable cmp" OFF)
option(ENABLE_FETCHCONTENT "enable cmp" ON)

option(ENABLE_TEST "enable testing" OFF)
option(ENABLE_WARNINGS "enable warnings" OFF)
option(ENABLE_OPTIMIZATION "enable optimization" OFF)

#doxygen
include(Documents)

if (ENABLE_CPM)
        message("using CPM")
        include(CPM)
        CPMAddPackage("gh:fmtlib/fmt#11.0.2")
        CPMAddPackage("gh:nlohmann/json@3.11.3")
        if(ENABLE_TEST)
                CPMAddPackage("gh:catchorg/Catch2@3.7.1")
        endif()
elseif(ENABLE_FETCHCONTENT)
        include(Fetchlib)
        fetchContentFunc(ENABLE_FETCHCONTENT ENABLE_TEST)
endif()

if (ENABLE_WARNINGS)
        include(Avertissement)
endif()

add_subdirectory(configure)
add_subdirectory(app)
add_subdirectory(src)

if(NOT CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    message("adding CTest")
    include(CTest)
    enable_testing()
    add_subdirectory(tests)
endif()


