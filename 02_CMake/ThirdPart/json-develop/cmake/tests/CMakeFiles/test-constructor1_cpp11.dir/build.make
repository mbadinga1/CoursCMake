# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake

# Include any dependencies generated for this target.
include tests/CMakeFiles/test-constructor1_cpp11.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test-constructor1_cpp11.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-constructor1_cpp11.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-constructor1_cpp11.dir/flags.make

tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o: tests/CMakeFiles/test-constructor1_cpp11.dir/flags.make
tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o: ../tests/src/unit-constructor1.cpp
tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o: tests/CMakeFiles/test-constructor1_cpp11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o"
	cd /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o -MF CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o.d -o CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o -c /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/src/unit-constructor1.cpp

tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.i"
	cd /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/src/unit-constructor1.cpp > CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.i

tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.s"
	cd /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests/src/unit-constructor1.cpp -o CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.s

# Object files for target test-constructor1_cpp11
test__constructor1_cpp11_OBJECTS = \
"CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o"

# External object files for target test-constructor1_cpp11
test__constructor1_cpp11_EXTERNAL_OBJECTS = \
"/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests/CMakeFiles/test_main.dir/src/unit.cpp.o"

tests/test-constructor1_cpp11: tests/CMakeFiles/test-constructor1_cpp11.dir/src/unit-constructor1.cpp.o
tests/test-constructor1_cpp11: tests/CMakeFiles/test_main.dir/src/unit.cpp.o
tests/test-constructor1_cpp11: tests/CMakeFiles/test-constructor1_cpp11.dir/build.make
tests/test-constructor1_cpp11: tests/CMakeFiles/test-constructor1_cpp11.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-constructor1_cpp11"
	cd /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-constructor1_cpp11.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-constructor1_cpp11.dir/build: tests/test-constructor1_cpp11
.PHONY : tests/CMakeFiles/test-constructor1_cpp11.dir/build

tests/CMakeFiles/test-constructor1_cpp11.dir/clean:
	cd /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-constructor1_cpp11.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-constructor1_cpp11.dir/clean

tests/CMakeFiles/test-constructor1_cpp11.dir/depend:
	cd /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/tests /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests /mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/ThirdPart/json-develop/cmake/tests/CMakeFiles/test-constructor1_cpp11.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test-constructor1_cpp11.dir/depend

