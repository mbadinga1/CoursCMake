set(CMAKE_HOST_SYSTEM "Linux-5.15.167.4-microsoft-standard-WSL2")
set(CMAKE_HOST_SYSTEM_NAME "Linux")
set(CMAKE_HOST_SYSTEM_VERSION "5.15.167.4-microsoft-standard-WSL2")
set(CMAKE_HOST_SYSTEM_PROCESSOR "x86_64")

include("/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/06_Extras/03_CrossCompilation/toolchains/toolchain-arm32.cmake")

set(CMAKE_SYSTEM "Linux")
set(CMAKE_SYSTEM_NAME "Linux")
set(CMAKE_SYSTEM_VERSION "")
set(CMAKE_SYSTEM_PROCESSOR "arm")

set(CMAKE_CROSSCOMPILING "TRUE")

set(CMAKE_SYSTEM_LOADED 1)
