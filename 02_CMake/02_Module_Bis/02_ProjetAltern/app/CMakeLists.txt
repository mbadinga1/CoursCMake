add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} PUBLIC  ${LIB_KELVIN} ${LIB_FAHREN})
