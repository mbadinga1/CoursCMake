# Explication avec target_link_libraries

target_link_libraries(MyExecutable PRIVATE MyLibrary)
Ici, MyLibrary est lié uniquement à MyExecutable, 
mais si un autre exécutable ou une bibliothèque lie MyExecutable, 
il ne recevra pas automatiquement les dépendances ou options de MyLibrary.

target_link_libraries(MyExecutable PUBLIC MyLibrary)
#Dans ce cas, MyExecutable dépend de MyLibrary,
#et si une autre cible (par exemple, AnotherExecutable) lie MyExecutable, 
#elle recevra également MyLibrary comme dépendance indirecte.

target_link_libraries(MyExecutable INTERFACE MyLibrary)
Ici, MyExecutable n'utilise pas directement MyLibrary, 
mais toute autre cible qui lie MyExecutable recevra les dépendances et options de MyLibrary.


#target_include_directories()

# Les en-têtes internes ne sont visibles que pour MyLib lui-même.
target_include_directories(MyLib PRIVATE "./")

# Les en-têtes publics de MyLib sont disponibles pour MyLib et ses utilisateurs.
target_include_directories(MyLib PUBLIC "./")

# Les en-têtes d'une dépendance externe ne sont pas utilisés par MyLib, mais doivent être propagés aux utilisateurs.
target_include_directories(MyLib INTERFACE "./")


PRIVATE : Les fichiers d'en-tête dans "./" ne sont visibles que par MyLib.
PUBLIC : Les fichiers d'en-tête dans "./" sont visibles par MyLib et toutes les cibles qui utilisent MyLib.
INTERFACE : Les fichiers d'en-tête dans "./" ne sont pas utilisés par MyLib lui-même, mais ils sont disponibles pour les cibles qui l'utilisent.
