# Commandes Utiles CMake

*Ce guide répertorie les commandes CMake les plus courantes et utiles, ainsi que leurs descriptions et exemples d'utilisation.
La liste est non exhaustive.*


Les exemples sont exécutés sur le terminal.
---

## 1. `cmake -S <source> -B <build>`
- **Description**: 

Configure un projet en spécifiant le répertoire source (`-S`) où se trouve le fichier `CMakeLists.txt` et le répertoire de build (`-B`) où les fichiers de build seront placés.
- **Exemple**: cmake -S . -B build

## 2. `cmake ..`
- **Description**: 

Permet de configurer le projet à partir du répertoire build en pointant le répertoire source.
- **Exemple**: 
  mkdir build && cd build
  cmake ..

## 3. `cmake --build <build_dir>`
- **Description**: 

Compile le projet en fonction de la configuration générée par CMake.
- **Exemple**:cmake --build build
**Options:**
    --config <Debug|Release> : Spécifie la configuration du build.
    -- -jN : Spécifie le nombre de tâches parallèles pour une compilation plus rapide.

## 4. `cmake --install <build_dir>`
  - **Description**: 
  
  Installe le projet dans l'emplacement spécifié
  - **Exemple**:cmake --install build

## 5. `cmake -G <generator>`
- **Description**: 

Avec G pour générateur, permet de créer une solution donnée en fonction du générateur choisit (ninja, visual studio, Makefiles, etc.)
- **Exemple**:cmake -G "Ninja" -S . -B build 

## 6. `cmake -DCMAKE_BUILD_TYPE=<type>`
- **Description**: 

Définit le type de build que CMake va crée en utilisant ces options : Debug, Release, RelWithDebInfo, MinSizeRel.
- **Exemple**:cmake -DCMAKE_BUILD_TYPE=Debug

## 7. `cmake -D <var>=<value>`
- **Description**: 

Définit l'état d'une variable cmake pendant le processus de configuration.
- **Exemple**: cmake .. -DMyOption=ON 

## 7. Lancer l'exécutable 
- **Description**: 

Après avoir généré votre projet et compiler avec votre cible spécifique vous pouvez maintenant lancer l'exécutable. Par défaut, il se trouve dans le build. 
```
cd build
./app/nom_Executable
```

# Explication avec target_link_libraries avec les mots clés

- **target_link_libraries(MyExecutable PRIVATE MyLibrary)**

Dans ce cas, MyLibrary est lié uniquement à MyExecutable, 
mais si un autre exécutable ou une bibliothèque lie MyExecutable, 
il ne recevra pas automatiquement les dépendances ou options de MyLibrary.

- **target_link_libraries(MyExecutable PUBLIC MyLibrary)**

Dans ce cas, MyExecutable dépend de MyLibrary,
et si une autre cible (par exemple, AnotherExecutable) lie MyExecutable, 
elle recevra également MyLibrary comme dépendance indirecte.

- **target_link_libraries(MyExecutable INTERFACE MyLibrary)**

Dans ce cas, MyExecutable n'utilise pas directement MyLibrary, 
mais toute autre cible qui lie MyExecutable recevra les dépendances et options de MyLibrary.


# Explication avec target_include_directories() avec les mots clés

- **target_include_directories(MyLib PRIVATE "./")**

Les en-têtes internes ne sont visibles que pour MyLib lui-même.


- **target_include_directories(MyLib PUBLIC "./")**

Les en-têtes publics de MyLib sont disponibles pour MyLib et ses utilisateurs.

- **target_include_directories(MyLib INTERFACE "./")**

Les en-têtes d'une dépendance externe ne sont pas utilisés par MyLib, mais doivent être propagés aux utilisateurs.

## Les mots clés
- *PRIVATE* : Les fichiers d'en-tête dans "./" ne sont visibles que par MyLib.
- *PUBLIC* : Les fichiers d'en-tête dans "./" sont visibles par MyLib et toutes les cibles qui utilisent MyLib.
- *INTERFACE* : Les fichiers d'en-tête dans "./" ne sont pas utilisés par MyLib lui-même, mais ils sont disponibles pour les cibles qui l'utilisent.


# Les mots clés de Linkage

## Shared
- Linux: *.so
- MacOS: *.dylib
- Windows: *.dll

À l'exécution, la bibliothèque est chargée dynamiquement. L'exécutable est plus petit, car il contient uniquement une référence à la bibliothèque.
La bibliothèque doit être fournie séparément avec l'exécutable

## Static
- Linux/MacOS: *.a
- Windows: *.lib

Lien à la compilation, le contenu de la bibliothèque est copié directement dans l'exécutable final. La taille de l'exécutable est augmentée.
Plus rapide à l'exécution car il n'y a pas de recherche dynamique des bibliothèques.