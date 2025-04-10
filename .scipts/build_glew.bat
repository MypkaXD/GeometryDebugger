@echo off
set INSTALL_DIR=glew-2.1.0

echo [1/3] Creating folders
if not exist "%INSTALL_DIR%/%INSTALL_DIR%/install" mkdir "%INSTALL_DIR%/%INSTALL_DIR%/install"
if not exist "%INSTALL_DIR%/%INSTALL_DIR%/mybuild" mkdir "%INSTALL_DIR%/%INSTALL_DIR%/mybuild"

echo [2/3] Configuration CMake
cmake -S "%INSTALL_DIR%/%INSTALL_DIR%/build/cmake" -B "%INSTALL_DIR%/%INSTALL_DIR%/mybuild" ^
    -G "Visual Studio 14 2015" ^
    -A Win32 ^
    -DBUILD_UTILS=OFF ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX="%INSTALL_DIR%/%INSTALL_DIR%/install" ^ 
    -DGLEW_OSMESA=OFF ^
    -DGLEW_REGAL=OFF

echo [3/3] Building
cmake --build "%INSTALL_DIR%/%INSTALL_DIR%/mybuild" --config Release --target install

echo Ready! Library in %INSTALL_DIR%/%INSTALL_DIR%/install