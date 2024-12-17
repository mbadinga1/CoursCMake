find_package(Doxygen OPTIONAL_COMPONENTS dot)
if(DOXYGEN_FOUND)
    add_custom_target(docs
                      COMMAND ${DOXYGEN_EXECUTABLE}
                      WORKING_DIRECTORY  ${CMAKE_SOURCE_DIR}/docs
                      COMMENT "Generation documentation en HTML"
                    )
endif()