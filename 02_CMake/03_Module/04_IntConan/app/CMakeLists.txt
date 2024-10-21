
add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} PUBLIC 
                                   ${LIB_NAME} ${LIB_FAHREN} 
                                   nlohmann_json::nlohmann_json
                                   fmt::fmt
                                   Catch2::Catch2WithMain
                                   )


install(TARGETS ${EXEC_NAME} DESTINATION ${INSTALL_PATH})
