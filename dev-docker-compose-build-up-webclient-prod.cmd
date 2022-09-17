@echo off

cd /d %~dp0

cd ..

cd istore-docker

docker compose stop --timeout 10 web.client

docker compose rm -f --stop --volumes web.client

::rem docker compose pull --include-deps

docker compose -f docker-compose.yml -f docker-compose.prod.yml build --no-cache --pull web.client
docker compose -f docker-compose.yml -f docker-compose.prod.yml up --force-recreate --pull always --remove-orphans --renew-anon-volumes -d web.client

pause
