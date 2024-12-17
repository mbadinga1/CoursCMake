set(TEST_PRINC "unit_tests")
set(TEST_SOURCES "test.cpp")

add_executable(${TEST_PRINC} ${TEST_SOURCES})
target_include_directories(${TEST_PRINC} PUBLIC "./")
target_link_libraries(${TEST_PRINC} PUBLIC ${LIB_FAHREN} ${LIB_NAME} GTest::gtest_main)

add_test(NAME MyTestPrinc COMMAND ${TEST_PRINC})

include(GoogleTest)
gtest_discover_tests(${TEST_PRINC})