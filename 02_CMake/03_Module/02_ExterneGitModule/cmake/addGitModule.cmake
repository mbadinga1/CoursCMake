function(addGitM dossier)
    find_package(Git REQUIRED)
    set(DIR_PATH  ${CMAKE_SOURCE_DIR}/${dossier})

    if (NOT EXISTS ${DIR_PATH}/CMakeLists.txt)
        execute_process(COMMAND ${GIT_EXECUTABLE}
            submodule update --init --recursive -- ${dossier}
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()

    add_subdirectory(${DIR_PATH})

endfunction()