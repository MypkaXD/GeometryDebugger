@echo off
:: Download and install GLEW 2.1.0

set GLEW_URL=https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0.zip/download
set GLEW_ZIP=glew-2.1.0.zip
set INSTALL_DIR=glew-2.1.0

echo [1/3] Downloading GLEW 2.1.0...
powershell -Command "(New-Object Net.WebClient).DownloadFile('%GLEW_URL%', '%GLEW_ZIP%')"

echo [2/3] Unzip...
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

powershell -Command "Expand-Archive -Path '%GLEW_ZIP%' -DestinationPath '%INSTALL_DIR%'"

echo [3/3] Clear...
if exist "%GLEW_ZIP%" del "%GLEW_ZIP%"

echo Install Success! GLEW in directory: %INSTALL_DIR%