@echo off

cd /d %~dp0

echo.
docker pull mcr.microsoft.com/dotnet/aspnet:3.1-alpine
docker pull mcr.microsoft.com/dotnet/aspnet:6.0-alpine
docker pull mcr.microsoft.com/dotnet/sdk:3.1-alpine
docker pull mcr.microsoft.com/dotnet/sdk:6.0-alpine
docker pull nginx:alpine
docker pull nginx:alpine-perl
docker pull node:alpine
docker pull node:lts-alpine
docker pull postgres:alpine
docker pull dpage/pgadmin4:latest
docker pull redis:alpine

echo.
pause
