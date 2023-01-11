@echo off

cd /d %~dp0

echo.
wsl --list --verbose

echo.
wsl --shutdown

echo.
set /p drive="Enter the letter of the preferred drive: "

echo.
mkdir %drive%:\wsl
mkdir %drive%:\wsl\backup
mkdir %drive%:\wsl\data
mkdir %drive%:\wsl\temp

echo.
wsl --export docker-desktop-data "%drive%:\wsl\backup\docker-desktop-data.tar"

echo.
wsl --unregister docker-desktop-data

echo.
wsl --import docker-desktop-data "%drive%:\wsl\data" "%drive%:\wsl\backup\docker-desktop-data.tar" --version 2

echo.
pause
