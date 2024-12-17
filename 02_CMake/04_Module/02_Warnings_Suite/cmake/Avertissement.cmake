function(enableWarnings TARGET WARNINGS WARNING_ERRORS)
    if(NOT ${WARNING})
        message(STATUS "Warnings non activer pour: ${TARGET}")
        return()
    else()
        message(STATUS "Warnings activer pour: ${TARGET}")
    endif()

    set(WARNING_MSVC
            /W4
            /Wall
            /permissive
    )

    set(WARNING_GCC_CLANG
            -Wall
            -Wextra
    )
    if (WARNING_ERRORS)
            set(WARNING_MSVC ${WARNING_MSVC} /Wx)
            set(WARNING_GCC_CLANG ${WARNING_GCC_CLANG} -Werror)
    endif()

    if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
            message("In MSVC compiler")
            set(WARNING_COMPILER ${WARNING_MSVC})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES Clang)
            message("In Clang compiler")
            set(WARNING_COMPILER ${WARNING_GCC_CLANG})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES GNU)
            message("In GCC compiler")
            set(WARNING_COMPILER ${WARNING_GCC_CLANG})
    else()
            message("No compiler")
    endif()

    target_compile_options(${TARGET} PRIVATE ${WARNING_COMPILER})
endfunction(enableWarnings)