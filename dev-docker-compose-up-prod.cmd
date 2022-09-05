@echo off

cd /d %~dp0

cd ..

cd istore-docker

docker compose -f docker-compose.yml -f docker-compose.prod.yml up --force-recreate --pull missing --remove-orphans -d

pause
