# Commandes Utiles CMake

Ce guide répertorie les commandes CMake les plus courantes et utiles, ainsi que leurs descriptions et exemples d'utilisation.
La liste est non exhaustive. 
Les exemples sont exécutés dans un terminal.
---

## 1. `cmake -S <source> -B <build>`
- **Description**: Configure un projet en spécifiant le répertoire source (`-S`) où se trouve le fichier `CMakeLists.txt` et le répertoire de build (`-B`) où les fichiers de build seront placés.
- **Exemple**:
  ```bash 
   cmake -S . -B build
  ```

## 2. cmake ..
- **Description**: Permet de configurer le projet à partir du répertoire build en pointant le répertoire source.
- **Exemple**:
  ```bash 
  mkdir build && cd build  
  cmake ..
  ```

## 3. cmake --build <build_dir>
- **Description**: Compile le projet en fonction de la configuration générée par CMake.
- **Exemple**:
   ```bash 
  cmake --build build
   ```
**Options:**  
    ```bash
    --config <Debug|Release> : Spécifie la configuration du build.  
    -- -jN : Spécifie le nombre de tâches parallèles pour une compilation plus rapide.
    ```

## 4. cmake --install <build_dir>
  - **Description**: Installe le projet dans l'emplacement spécifié
  - **Exemple**:
    ```bash  
    cmake --install build
    ```

## 5. cmake -G <generator>
- **Description**: avec G pour générateur, permet de créer une solution donnée en fonction du générateur choisit (ninja, visual studio, Makefiles, etc.)
- **Exemple**:
  ```bash  
  cmake -G "Ninja" -S . -B build
  ``` 

## 6. cmake -DCMAKE_BUILD_TYPE=<type>
- **Description**: Définit le type de build que CMake va crée en utilisant ces options : Debug, Release, RelWithDebInfo, MinSizeRel.
- **Exemple**:
  ```bash  
  cmake -DCMAKE_BUILD_TYPE=Debug
  ```

## 7. cmake -D <var>=<value>
- **Description**: Définit l'état d'une variable cmake pendant le processus de configuration.
- **Exemple**:
  ```bash  
  cmake .. -DMyOption=ON
  ```
