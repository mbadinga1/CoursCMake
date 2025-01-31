include_directories(include)
find_package(PythonLibs REQUIRED)
include_directories(${PYTHON_INCLUDE_DIRS})

add_executable(${EXEC_NAME} main.cpp)

target_link_libraries(
    ${EXEC_NAME}
    PUBLIC ${LIB_NAME}
           ${LIB_FAHREN}
           nlohmann_json::nlohmann_json
           fmt::fmt
           ${PYTHON_LIBRARIES})
if(ENABLE_WARNINGS)
    enablewarnings(${EXEC_NAME} OFF OFF)
endif()
if(ENABLE_OPTIMIZATION)
    message("Activation Optimisation")
    if(MSVC)
        add_compile_options(/O2 /Ob2)
    elseif(UNIX)
        add_compile_options(-O2 -finline-functions)
    endif()
endif()
install(TARGETS ${EXEC_NAME} DESTINATION ${INSTALL_PATH})
