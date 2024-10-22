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

set(INSTALL_PATH "/usr/local/" CACHE PATH "chemin pour installer le binaire")

option(COMPILE_APP "compile code application" ON)
option(ENABLE_DEBUG "Activer le debug" OFF)
option(ENABLE_CPM "enable cmp" ON)
option(ENABLE_TEST "enable testing" ON)
option(ENABLE_WARNINGS "enable warnings" ON)



if (ENABLE_CPM)
        include(cmake/CPM.cmake)
        CPMAddPackage("gh:fmtlib/fmt#11.0.2")
        CPMAddPackage("gh:nlohmann/json@3.11.3")
        if(ENABLE_TEST)
                CPMAddPackage("gh:catchorg/Catch2@3.7.1")
        endif()
else()
        include(FetchContent)
        FetchContent_Declare(
                fmt
                GIT_REPOSITORY https://github.com/fmtlib/fmt
                GIT_TAG 11.0.2
                GIT_SHALLOW TRUE)
        FetchContent_MakeAvailable(fmt)

        FetchContent_Declare(
                nlohmann_json
                GIT_REPOSITORY https://github.com/nlohmann/json
                GIT_TAG 3.11.3
                GIT_SHALLOW TRUE)
        FetchContent_MakeAvailable(nlohmann_json)
        
        if(ENABLE_TEST)
                FetchContent_Declare(
                        Catch2
                        GIT_REPOSITORY git@github.com:catchorg/Catch2
                        GIT_TAG 3.7.1
                        GIT_SHALLOW TRUE)
                FetchContent_MakeAvailable(Catch2)
        endif()
endif()

if (ENABLE_WARNINGS)
        include(cmake/Avertissement.cmake)
endif()

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

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    message("adding CTest")
    include(CTest)
    enable_testing()
    add_subdirectory(tests)
endif()


