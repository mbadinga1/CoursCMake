# Installation paquets

## installation vcpkg

site [ici](https://learn.microsoft.com/fr-fr/vcpkg/get_started/get-started?pivots=shell-powershell)

```cmd
cd external
git clone https://github.com/microsoft/vcpkg.git
cd vcpkg; .\bootstrap-vcpkg.bat
```
cmake -DCMAKE_TOOLCHAIN_FILE=./external/vcpkg/scripts/buildsystems/vcpkg.cmake ..
Configuration projet
cd /path/root_project
external/vcpkg/vcpkg.exe install

## Installation de Conan Package Manager

Site officiel [ici](https://docs.conan.io/2/).

Base de donnée [ici](https://conan.io/center/).

### Guide Installation 

1. Installation Python (3.7+)
2. Type ``pip install --user -U conan`` dans le terminal
    Sur linux
   1. ouvrir nano ~/.bashrc
   2. ajouter le path dans la variable en (python3 -m site --user-base)
   export PATH=$PATH:/home/lbadinga/.local/bin
   3. entrée commande source ~/.bashrc


3. Tester la commande: ``conan``
    1. conan --version
4. conan profile detect --force
5. conan profile detect


## Matplotlib

Github [ici](https://github.com/lava/matplotlib-cpp)

- Installer matplotlib 
``` bash
pip install matplotlib 
pip install "numpy<2.0"
```

- Faire attention sur le CMakeLists.txt : app/CMakeLists.txt incluant les librairies python

## Outil de coverage 

Outil de test pour visualer l'ensemble des tests exécutés. 

```bash
sudo apt-get install gcovr
pip install -U gcovr
```

## Cross Compilation 
### Compilateur ARM Compiler sur  x86 64 Ubuntu

```shell
sudo apt update
sudo apt install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi libncurses5-dev build-essential bison flex libssl-dev bc

sudo apt install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
sudo apt install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
```

### Installation compilateur MingW on x86 64 Ubuntu

```shell
sudo apt-get install mingw-w64
```
