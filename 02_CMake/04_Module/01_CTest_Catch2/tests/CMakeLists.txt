set(TEST_PRINC "unit_test")
set(TEST_SOURCES "test.cpp")

add_executable(${TEST_PRINC} ${TEST_SOURCES})
target_include_directories(${TEST_PRINC} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(${TEST_PRINC} PUBLIC ${LIB_FAHREN} ${LIB_NAME} Catch2::Catch2WithMain)

add_test(NAME MytestPrinc COMMAND ${TEST_PRINC})
include(Catch)
catch_discover_tests(${TEST_PRINC})
