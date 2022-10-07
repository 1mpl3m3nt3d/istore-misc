@echo off

cd /d %~dp0

echo.
call docker builder prune --all --force
echo.
call docker buildx prune --all --force
echo.
call docker container prune --force
echo.
call docker image prune --force
echo.
call docker network prune --force
echo.
call docker volume prune --force

echo.
pause
