include(CMakeParseArguments)

# Activer les flags de couverture
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage -g -O0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --coverage -g -O0")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --coverage")

# Vérifier si gcovr est installé
find_program(GCOVR_PATH gcovr REQUIRED)

function(setup_target_for_coverage_gcovr_html)
    # Vérifier si la couverture est activée
    if (NOT ENABLE_COVERAGE)
        message(STATUS "GCOVR non activé (ENABLE_COVERAGE=OFF)")
        return()
    endif()

    set(options NONE)
    set(oneValueArgs NAME)
    set(multiValueArgs EXECUTABLE EXECUTABLE_ARGS DEPENDENCIES)
    cmake_parse_arguments(Coverage "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    if (NOT Coverage_NAME)
        message(FATAL_ERROR "La cible de couverture doit avoir un nom (NAME).")
    endif()

    if (NOT Coverage_EXECUTABLE)
        message(FATAL_ERROR "La cible de couverture doit avoir un exécutable (EXECUTABLE).")
    endif()

    # Ajouter une cible personnalisée pour le rapport de couverture
    add_custom_target(${Coverage_NAME}
        COMMAND ${Coverage_EXECUTABLE} ${Coverage_EXECUTABLE_ARGS}
        COMMAND ${GCOVR_PATH}
            --html --html-details -o ${Coverage_NAME}.html
            --root ${PROJECT_SOURCE_DIR}
            --exclude ${PROJECT_SOURCE_DIR}/tests/
            --exclude ${PROJECT_SOURCE_DIR}/external/
            --exclude ${PROJECT_SOURCE_DIR}/cmake/
            --exclude ${PROJECT_SOURCE_DIR}/docs/
            --exclude ${PROJECT_SOURCE_DIR}/build/
        WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
        DEPENDS ${Coverage_EXECUTABLE} ${Coverage_DEPENDENCIES}
        COMMENT "Génération du rapport de couverture HTML avec gcovr"
    )

    message(STATUS "Cible '${Coverage_NAME}' ajoutée pour la couverture.")
endfunction()
