function(ajout_clang_format)
    if(NOT ${ENABLE_CLANG_FORMAT})
        message(STATUS "Clang Format désactivé (ENABLE_CLANG_FORMAT = OFF)")
        return()
    endif()
    file(
        GLOB_RECURSE
        ALL_CPP_FILES
        "{CMAKE_SOURCE_DIR}/*.cpp"
        "{CMAKE_SOURCE_DIR}/*.hpp"
        "{CMAKE_SOURCE_DIR}/*.h")
    list(
        FILTER
        ALL_CPP_FILES
        EXCLUDE
        REGEX
        "${CMAKE_SOURCE_DIR}/(build|external)/.*")
    find_program(CLANG_FORMAT clang-format)
    if(CLANG_FORMAT)
        message(STATUS "Ajout Clang Format")
        add_custom_target(
            format_clang
            COMMAND ${CLANG_FORMAT} -i ${ALL_CPP_FILES}
            WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
            COMMENT "Formatage du code avec Clang-Format"
            VERBATIM)
    else()
        message(
            STATUS " Clang Format non trouvé? Veuillez vérifier l'installation")
    endif()
endfunction()

function(ajout_cmake_format)
    if(NOT ${ENABLE_CMAKE_FORMAT})
        message(STATUS "Cmake Format désactivé (ENABLE_CMAKE_FORMAT = OFF)")
        return()
    endif()
    file(
        GLOB_RECURSE
        ALL_CMAKE_FILES
        "${CMAKE_SOURCE_DIR}/**/CMakeLists.txt"
        "${CMAKE_SOURCE_DIR}/cmake/*.cmake")

    list(
        FILTER
        ALL_CMAKE_FILES
        EXCLUDE
        REGEX
        "${CMAKE_SOURCE_DIR}/(build|external)/.*")
    find_program(CMAKE_FORMAT cmake-format)
    if(CMAKE_FORMAT)
        message(STATUS "Ajout CMake Format")
        add_custom_target(
            format_cmake
            COMMAND ${CMAKE_FORMAT} -i ${ALL_CMAKE_FILES}
            WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
            COMMENT "Formatage du code avec Cmake-Format"
            VERBATIM)
    else()
        message(
            STATUS " Clang Format non trouvé? Veuillez vérifier l'installation")
    endif()
endfunction()
