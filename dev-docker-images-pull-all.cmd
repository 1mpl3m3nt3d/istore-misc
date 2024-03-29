@echo off

cd /d %~dp0

echo.
docker pull alpine:latest
docker pull couchdb:3
docker pull couchdb:latest
docker pull docker.elastic.co/elasticsearch/elasticsearch:8.2.3
docker pull dpage/pgadmin4:latest
docker pull elasticsearch:8.2.3
docker pull httpd:alpine
docker pull httpd:bullseye
docker pull httpd:latest
docker pull mariadb:10
docker pull mariadb:jammy
docker pull mariadb:latest
docker pull mcr.microsoft.com/dotnet/aspnet:3.1
docker pull mcr.microsoft.com/dotnet/aspnet:3.1-alpine
docker pull mcr.microsoft.com/dotnet/aspnet:3.1-bullseye-slim
docker pull mcr.microsoft.com/dotnet/aspnet:3.1-focal
docker pull mcr.microsoft.com/dotnet/aspnet:5.0
docker pull mcr.microsoft.com/dotnet/aspnet:5.0-alpine
docker pull mcr.microsoft.com/dotnet/aspnet:5.0-bullseye-slim
docker pull mcr.microsoft.com/dotnet/aspnet:5.0-focal
docker pull mcr.microsoft.com/dotnet/aspnet:6.0
docker pull mcr.microsoft.com/dotnet/aspnet:6.0-alpine
docker pull mcr.microsoft.com/dotnet/aspnet:6.0-focal
docker pull mcr.microsoft.com/dotnet/aspnet:6.0-jammy
docker pull mcr.microsoft.com/dotnet/sdk:3.1
docker pull mcr.microsoft.com/dotnet/sdk:3.1-alpine
docker pull mcr.microsoft.com/dotnet/sdk:3.1-bullseye
docker pull mcr.microsoft.com/dotnet/sdk:3.1-focal
docker pull mcr.microsoft.com/dotnet/sdk:5.0
docker pull mcr.microsoft.com/dotnet/sdk:5.0-alpine
docker pull mcr.microsoft.com/dotnet/sdk:5.0-bullseye-slim
docker pull mcr.microsoft.com/dotnet/sdk:5.0-focal
docker pull mcr.microsoft.com/dotnet/sdk:6.0
docker pull mcr.microsoft.com/dotnet/sdk:6.0-alpine
docker pull mcr.microsoft.com/dotnet/sdk:6.0-focal
docker pull mcr.microsoft.com/dotnet/sdk:6.0-jammy
docker pull memcached:1
docker pull memcached:1-alpine
docker pull memcached:1-bullseye
docker pull memcached:alpine
docker pull memcached:bullseye
docker pull memcached:latest
docker pull mongo-express:latest
docker pull mongo:4
docker pull mongo:4-focal
docker pull mongo:5
docker pull mongo:latest
docker pull mysql:debian
docker pull mysql:latest
docker pull mysql:oracle
docker pull nginx:alpine
docker pull nginx:alpine-perl
docker pull nginx:latest
docker pull nginx:mainline
docker pull nginx:mainline-alpine
docker pull nginx:mainline-alpine-perl
docker pull nginx:mainline-perl
docker pull nginx:perl
docker pull node:16
docker pull node:16-alpine
docker pull node:16-bullseye
docker pull node:16-buster
docker pull node:18
docker pull node:18-alpine
docker pull node:18-bullseye
docker pull node:alpine
docker pull node:current
docker pull node:current-alpine
docker pull node:current-bullseye
docker pull node:latest
docker pull node:lts
docker pull node:lts-alpine
docker pull node:lts-bullseye
docker pull node:lts-buster
docker pull postgres:alpine
docker pull postgres:bullseye
docker pull postgres:latest
docker pull rabbitmq:alpine
docker pull rabbitmq:latest
docker pull rabbitmq:management
docker pull rabbitmq:management-alpine
docker pull redis:alpine
docker pull redis:bullseye
docker pull redis:latest

echo.
pause
