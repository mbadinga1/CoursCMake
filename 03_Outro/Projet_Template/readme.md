# Pojet Template avec CMake


**Projet template du cours CMake Clarifé - Maîtrisez vos Projets C/C++ , Tests et Outils**.
Lien du cours sur Udemy: [Lien]()

Dans ce projet, vous avez:


- Librairie externe intégrée par plusieurs moyens: 
  - [CPM](https://github.com/cpm-cmake/CPM.cmake) 
  - [Conan](https://conan.io/) 
  - [VCPKG](https://github.com/microsoft/vcpkg) 
- Libraire interne à modifier, compiler et tester
- Test unitaire [Catch2](https://github.com/catchorg/Catch2) et [googleTest](https://github.com/google/googletest)
- La librairie Json: [JSON](https://github.com/nlohmann/json) et bien d'autres...

- Documentation du code [Doxygen](https://doxygen.nl/) 
- Matplotlib (.h) pour la visualisation des données : [Matplotlib](https://github.com/lava/matplotlib-cpp)

## La Structure

``` text
├── CMakeLists.txt
├── app
│   ├── CMakeLists.txt
│   ├── include
│   │   └── matplotlibcpp.h
│   └── main.cpp
├── cmake
│   └── module*.cmake
├── configure
│   ├── CMakeLists.txt
│   └── version.hpp.in
├── datas
│   ├── Temperature_celsius.png
│   ├── Temperature_kelvin.png
│   ├── patient.json
│   └── patient_conversion.json
├── docs
│   ├── Doxyfile
│   └── DoxygenReadme.md
├── install
│   └── lib*
├── src
│   ├── CMakeLists.txt
│   ├── libFahren
│   └── libKelvin
└── tests
    ├── CMakeLists.txt
    └── test.cpp
```



## Software Requirements

- CMake 3.21+
- GNU Makefile
- Doxygen
- Conan or VCPKG
- MSVC 2017 (or higher), G++9 (or higher), Clang++9 (or higher)
- Code Coverage (only on GNU|Clang): gcovr
- Makefile, Doxygen, Conan, VCPKG


