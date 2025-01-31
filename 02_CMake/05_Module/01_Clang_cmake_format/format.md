# Formatage

## Outils 
Outil permet de formater le code afin de suivre une guidline ou style de codage. 
Clang-Format : Outil de formatage du code C/C++  
- Documentation  [lien](https://clang.llvm.org/docs/ClangFormat.html)

```cmd
sudo apt install clang-format
```

Générer le fichier .clang-format
```cmd
clang-format -style=llvm -dump-config > .clang-format
```

Cmake-format:  Permet de formater les fichiers CMakeLists.txt et les fichiers .cmake
```cmd
pip install cmake-format
```
