# CMake generated Testfile for 
# Source directory: /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/cmake_import_minver
# Build directory: /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests/cmake_import_minver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_import_minver_configure "/usr/bin/cmake" "-G" "Unix Makefiles" "-A" "" "-DCMAKE_CXX_COMPILER=/usr/bin/c++" "-Dnlohmann_json_DIR=/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake" "/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/cmake_import_minver/project")
set_tests_properties(cmake_import_minver_configure PROPERTIES  FIXTURES_SETUP "cmake_import_minver" LABELS "not_reproducible" _BACKTRACE_TRIPLES "/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/cmake_import_minver/CMakeLists.txt;1;add_test;/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/cmake_import_minver/CMakeLists.txt;0;")
add_test(cmake_import_minver_build "/usr/bin/cmake" "--build" ".")
set_tests_properties(cmake_import_minver_build PROPERTIES  FIXTURES_REQUIRED "cmake_import_minver" LABELS "not_reproducible" _BACKTRACE_TRIPLES "/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/cmake_import_minver/CMakeLists.txt;9;add_test;/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/cmake_import_minver/CMakeLists.txt;0;")
