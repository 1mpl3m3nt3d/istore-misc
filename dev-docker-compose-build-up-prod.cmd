@echo off

cd /d %~dp0

cd ..
cd istore-docker

echo.
docker compose stop --timeout 10
echo.
docker compose rm -f --stop --volumes
echo.
docker compose down --remove-orphans --rmi local --timeout 10 --volumes

::echo.
::rem docker compose pull --include-deps

echo.
docker compose -f docker-compose.yml -f docker-compose.prod.yml build --no-cache --pull
echo.
docker compose -f docker-compose.yml -f docker-compose.prod.yml up --force-recreate --pull always --remove-orphans --renew-anon-volumes -d

echo.
pause
