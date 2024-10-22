
add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} PUBLIC 
                                   ${LIB_NAME} ${LIB_FAHREN} 
                                   nlohmann_json::nlohmann_json
                                   fmt::fmt
                                   )
target_compile_options(${EXEC_NAME} PRIVATE ${COMPILER_WARNINGS})
install(TARGETS ${EXEC_NAME} DESTINATION ${INSTALL_PATH})
