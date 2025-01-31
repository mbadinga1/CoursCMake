function(add_git dossier)
    find_package(Git REQUIRED)
    set(FULL_DIR ${CMAKE_SOURCE_DIR}/${dossier})

    if(NOT EXISTS ${FULL_DIR}/CMakeLists.txt)
        execute_process(
            COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive --
                    ${relative_dir} WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()

    if(EXISTS ${FULL_DIR}/CMakeLists.txt)
        message("Submodule is CMake Project: ${FULL_DIR}/CMakeLists.txt")
        add_subdirectory(${FULL_DIR})
    else()
        message("Submodule is NO CMake Project: ${FULL_DIR}")
    endif()
endfunction(add_git)
