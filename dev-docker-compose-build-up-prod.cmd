@echo off

cd /d %~dp0

cd ..

cd istore-docker

docker compose stop --timeout 10

docker compose rm -f --stop --volumes

docker compose down --remove-orphans --rmi local --timeout 10 --volumes

::rem docker compose pull --include-deps

docker compose -f docker-compose.yml -f docker-compose.prod.yml build --no-cache --pull
docker compose -f docker-compose.yml -f docker-compose.prod.yml up --force-recreate --pull always --remove-orphans --renew-anon-volumes -d

pause
