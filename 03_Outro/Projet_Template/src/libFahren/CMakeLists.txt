set(LIB_SOURCES "fahren.cpp")

set(LIB_INCLUDES 
    fahren.h
    )

add_library(${LIB_FAHREN} SHARED ${LIB_SOURCES} ${LIB_INCLUDES})
target_include_directories(${LIB_FAHREN} PUBLIC 
                            "./"
                            "${CMAKE_BINARY_DIR}/configure_files/include"
                            )
if(WIN32)
    target_compile_definitions(${LIB_FAHREN} PRIVATE EXPORT_MYLIBFAHREN)
    set_target_properties(${LIB_FAHREN} PROPERTIES SUFFIX ".dll")
elseif(UNIX)
    set_target_properties(${LIB_FAHREN} PROPERTIES SUFFIX ".so")
elseif(APPLE)
    set_target_properties(${LIB_FAHREN} PROPERTIES SUFFIX ".dylib")
endif()

install(TARGETS ${LIB_FAHREN}
        RUNTIME DESTINATION ${INSTALL_PATH}/bin
        LIBRARY DESTINATION ${INSTALL_PATH}/lib
        ARCHIVE DESTINATION ${INSTALL_PATH}/lib)
