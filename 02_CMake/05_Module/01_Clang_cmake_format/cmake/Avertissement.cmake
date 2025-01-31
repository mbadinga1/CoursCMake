function(
    enableWarnings
    TARGET
    WARNING
    WARNING_ERRORS)
    if(NOT ${WARNING})
        message(STATUS "Warnings non activer pour: ${TARGET}")
        return()
    else()
        message(STATUS "Warnings activer pour: ${TARGET}")
    endif()

    set(WARNING_MSVC /W4 /Wall /permissive)
    set(GCC_CLANG_WARNINGS -Wall -Wextra)

    if(WARNING_ERRORS)
        set(WARNING_MSVC ${WARNING_MSVC} /Wx)
        set(GCC_CLANG_WARNINGS ${GCC_CLANG_WARNINGS} -Werror)
    endif()

    if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
        message("in MSCV compiler")
        set(COMPILER_WARNINGS ${WARNING_MSVC})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES Clang)
        set(COMPILER_WARNINGS ${GCC_CLANG_WARNINGS})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES GNU)
        set(COMPILER_WARNINGS ${GCC_CLANG_WARNINGS})
    endif()
    target_compile_options(${TARGET} PRIVATE ${COMPILER_WARNINGS})
endfunction(enableWarnings)
