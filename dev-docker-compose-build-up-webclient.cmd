@echo off

cd /d %~dp0

cd ..

cd istore-docker

echo.
docker compose stop --timeout 10 web.client
echo.
docker compose rm -f --stop --volumes web.client

::echo.
::rem docker compose pull --include-deps

echo.
docker compose -f docker-compose.yml -f docker-compose.override.yml build --no-cache --pull web.client
echo.
docker compose -f docker-compose.yml -f docker-compose.override.yml up --force-recreate --pull always --remove-orphans --renew-anon-volumes -d web.client

echo.
pause
