
add_executable(${EXEC_NAME} main.cpp)
target_link_libraries(${EXEC_NAME} PUBLIC 
                                   ${LIB_NAME} ${LIB_FAHREN} 
                                   nlohmann_json::nlohmann_json
                                   fmt::fmt
                                   )
if(ENABLE_WARNINGS)
    enableWarnings(${EXEC_NAME} OFF OFF)
endif()
install(TARGETS ${EXEC_NAME} DESTINATION ${INSTALL_PATH})
