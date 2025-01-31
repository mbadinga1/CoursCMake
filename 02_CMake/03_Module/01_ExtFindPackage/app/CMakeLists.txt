
add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} PUBLIC ${LIB_NAME} ${LIB_FAHREN} PRIVATE nlohmann_json::nlohmann_json)
install(TARGETS ${EXEC_NAME} DESTINATION ${INSTALL_PATH})
