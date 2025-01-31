
add_executable(${EXEC_NAME} main.cpp)
include_directories(${OpenCV_INCLUDE_DIRS})

target_link_libraries(${EXEC_NAME} PUBLIC ${LIB_NAME} ${LIB_FAHREN} ${OpenCV_LIBS} PRIVATE nlohmann_json::nlohmann_json)
install(TARGETS ${EXEC_NAME} DESTINATION ${INSTALL_PATH})
