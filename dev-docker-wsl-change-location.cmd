@echo off

cd /d %~dp0

echo.
wsl --list --verbose

wsl --shutdown

echo.
set /p drive="Enter the letter of the prefered drive: "

mkdir %drive%:\wsl
mkdir %drive%:\wsl\backup
mkdir %drive%:\wsl\data
mkdir %drive%:\wsl\temp

wsl --export docker-desktop-data "%drive%:\wsl\backup\docker-desktop-data.tar"

wsl --unregister docker-desktop-data

wsl --import docker-desktop-data "%drive%:\wsl\data" "%drive%:\wsl\backup\docker-desktop-data.tar" --version 2

pause
