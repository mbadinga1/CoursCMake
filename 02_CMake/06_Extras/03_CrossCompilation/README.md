
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


### Compilation cible ARM 32 
```shell
cmake -B build_arm32 -DCMAKE_TOOLCHAIN_FILE=toolchains/toolchain-arm32.cmake
cmake --build build_arm32 -j8
```

### Compilation cible x86 64 MingW
```shell
cmake -B build_x86 -DCMAKE_TOOLCHAIN_FILE=toolchains/toolchain-x86.cmake
cmake --build build_x86 -j8
```


### Compilation cible native
```shell
cmake -B build -DCMAKE_TOOLCHAIN_FILE=toolchains/toolchain-native.cmake
cmake --build build -j8
```