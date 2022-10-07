@echo off

cd /d %~dp0

echo.
docker pull mcr.microsoft.com/dotnet/aspnet:3.1-bullseye-slim
docker pull mcr.microsoft.com/dotnet/aspnet:6.0
docker pull mcr.microsoft.com/dotnet/sdk:3.1-bullseye
docker pull mcr.microsoft.com/dotnet/sdk:6.0
docker pull nginx:latest
docker pull nginx:perl
docker pull node:latest
docker pull node:lts-bullseye
docker pull postgres:latest
docker pull dpage/pgadmin4:latest
docker pull redis:latest

echo.
pause
