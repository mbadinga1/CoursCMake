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