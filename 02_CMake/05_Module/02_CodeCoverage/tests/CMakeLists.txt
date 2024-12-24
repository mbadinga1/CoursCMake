# Définition des variables pour les tests
set(TEST_PRINC "unit_tests")
set(TEST_SOURCES "test.cpp")

# Création de l'exécutable pour les tests
add_executable(${TEST_PRINC} ${TEST_SOURCES})
target_include_directories(${TEST_PRINC} PUBLIC "./")
target_link_libraries(${TEST_PRINC} PUBLIC ${LIB_FAHREN} ${LIB_NAME} Catch2::Catch2WithMain)

# Déclaration des tests pour CTest
add_test(NAME MyTestPrinc COMMAND ${TEST_PRINC})

# Configuration de la couverture

if (ENABLE_COVERAGE)
    # Définir les exclusions pour gcovr
    set(COVERAGE_EXCLUDES
        "${PROJECT_SOURCE_DIR}/app/*"
        "${PROJECT_SOURCE_DIR}/cmake/*"
        "${PROJECT_SOURCE_DIR}/docs/*"
        "${PROJECT_SOURCE_DIR}/external/*"
        "${PROJECT_SOURCE_DIR}/tests/*"
        "${PROJECT_SOURCE_DIR}/build/*"
        "/usr/include/*"
    )

    # Ajouter la cible de couverture
    setup_target_for_coverage_gcovr_html(
        NAME coverage
        EXECUTABLE ${CMAKE_CTEST_COMMAND}
        DEPENDENCIES ${TEST_PRINC}
    )
endif()
