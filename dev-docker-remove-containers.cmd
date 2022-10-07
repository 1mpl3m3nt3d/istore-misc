@echo off

cd /d %~dp0

cd ..

cd istore-docker

echo.
call docker compose stop --timeout 10
echo.
call docker compose rm -f --stop --volumes
echo.
call docker compose down --remove-orphans --timeout 10 --volumes

echo.
pause
