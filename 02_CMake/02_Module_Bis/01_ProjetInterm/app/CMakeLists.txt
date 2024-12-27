
add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} PUBLIC ${LIB_NAME} ${LIB_FAHREN})
install(TARGETS ${EXEC_NAME} DESTINATION ${INSTALL_PATH})
