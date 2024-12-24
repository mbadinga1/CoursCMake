# toolchain-arm32.cmake

# Spécifier le système cible
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Spécifier le compilateur cross-compilation
set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)

# Spécifier l'outil de linkage
set(CMAKE_LINKER arm-linux-gnueabihf-ld)

# Spécifier les chemins de recherche
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Options supplémentaires pour le compilateur
add_compile_options(-march=armv7-a -mfpu=neon -mfloat-abi=hard)
