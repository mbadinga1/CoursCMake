# Installation de Conan Package Manager

Site officiel [ici](https://docs.conan.io/2/).

Database [ici](https://conan.io/center/).

# Guide Installation 

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
