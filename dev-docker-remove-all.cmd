@echo off

cd /d %~dp0

cd ..

cd istore-docker

call docker compose stop --timeout 10
call docker compose rm -f --stop --volumes
call docker compose down --remove-orphans --rmi local --timeout 10 --volumes

pause
