function(fetchContentFunc ACTIVER ENABLE_TEST)
    if (NOT ${ACTIVER})
        message("FetchContent non utilise pour inclure les  librairies")
        return()
    else()
         message("FetchContent utilisee pour inclure les  librairies")
    endif()

    include(FetchContent)
    FetchContent_Declare(
            fmt
            GIT_REPOSITORY https://github.com/fmtlib/fmt
            GIT_TAG 11.0.2
            GIT_SHALLOW TRUE)
    FetchContent_MakeAvailable(fmt)

    FetchContent_Declare(
        nlohmann_json
        GIT_REPOSITORY https://github.com/nlohmann/json
        GIT_TAG v3.11.3
        GIT_SHALLOW TRUE)
    FetchContent_MakeAvailable(nlohmann_json)
    
    if(${ENABLE_TEST})
        FetchContent_Declare(
            Catch2
            GIT_REPOSITORY https://github.com/catchorg/Catch2
            GIT_TAG v3.5.3
            GIT_SHALLOW TRUE)
        FetchContent_MakeAvailable(Catch2)
    endif()
endfunction(fetchContentFunc)