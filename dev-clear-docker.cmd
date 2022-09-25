@echo off

cd /d %~dp0

cd ..

cd istore-docker

echo.
echo Clearing Docker ...
echo.

call docker compose stop --timeout 10
call docker compose rm -f --stop --volumes
call docker compose down --remove-orphans --rmi local --timeout 10 --volumes

call docker image prune --all --force --filter "label=project=iStore_Basket.Host"
call docker image prune --all --force --filter "label=project=iStore_Catalog.Host"
call docker image prune --all --force --filter "label=project=iStore_IdentityServer"
call docker image prune --all --force --filter "label=project=iStore_Web.Client"

call docker builder prune --all --force
call docker buildx prune --all --force
call docker container prune --force
call docker image prune --force
call docker network prune --force
call docker volume prune --force

echo.
pause
