find_package(Doxygen OPTIONAL_COMPONENTS dot)
# if(DOXYGEN_FOUND)
#     message("Installation Doxygen")
#     set(DOXYGEN_MARKDOWN_SUPPORT YES)
#     set(DOXYGEN_USE_MDFILE_AS_MAINPAGE "${CMAKE_SOURCE_DIR}/readme.md")
#     set(DOXYGEN_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/docs")

#     doxygen_add_docs(html
#                     ${CMAKE_SOURCE_DIR}/app
#                     ${CMAKE_SOURCE_DIR}/src
#                     ALL
#                     COMMENT "Generation doxygen in html"
#                     )
# else()
#     message("Doxygen doit être installé")
# endif()

if (DOXYGEN_FOUND)
    set(DOXYGEN_FILE_PATTERNS "*.md")
    set(DOXYGEN_USE_MDFILE_AS_MAINPAGE "${CMAKE_SOURCE_DIR}/readme.md")

    add_custom_target(docs
        COMMAND ${DOXYGEN_EXECUTABLE}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/docs
        COMMENT "Generating HTML documentation with Doxygen"
    )
endif()