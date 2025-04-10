@echo off
:: Download and extract GLFW

set GLFW_URL=https://github.com/glfw/glfw/archive/refs/heads/master.zip
set GLFW_ZIP=glfw-master.zip
set INSTALL_DIR=glfw-master

echo [1/3] Downloading GLFW 3.3.8...
powershell -Command "(New-Object Net.WebClient).DownloadFile('%GLFW_URL%', '%GLFW_ZIP%')"

echo [2/3] Extracting archive...
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
powershell -Command "Expand-Archive -Path '%GLFW_ZIP%' -DestinationPath '%INSTALL_DIR%'"

echo [3/3] Cleaning up...
del "%GLFW_ZIP%"

echo GLFW successfully downloaded and extracted to %INSTALL_DIR%