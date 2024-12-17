add_library(${LIB_NAME} SHARED  kelvin.cpp)
target_include_directories(${LIB_NAME} PUBLIC "./")
if(WIN32)
    target_compile_definitions(${LIB_NAME} PRIVATE EXPORT_MYLIBFAHREN)
    set_target_properties(${LIB_NAME} PROPERTIES SUFFIX ".dll")
elseif(UNIX)
    set_target_properties(${LIB_NAME} PROPERTIES SUFFIX ".so")
elseif(APPLE)
    set_target_properties(${LIB_NAME} PROPERTIES SUFFIX ".dylib")
endif()

install(TARGETS ${LIB_NAME}
        RUNTIME DESTINATION ${INSTALL_PATH}/bin
        LIBRARY DESTINATION ${INSTALL_PATH}/lib
        ARCHIVE DESTINATION ${INSTALL_PATH}/lib)