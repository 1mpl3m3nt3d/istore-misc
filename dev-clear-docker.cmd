@echo off

cd /d %~dp0

cd ..

cd istore-docker

echo.
echo Clearing Docker ...
echo.

echo.
call docker compose stop --timeout 10
echo.
call docker compose rm -f --stop --volumes
echo.
call docker compose down --remove-orphans --rmi local --timeout 10 --volumes

echo.
call docker image prune --all --force --filter "label=project=iStore_Basket.Host"
echo.
call docker image prune --all --force --filter "label=project=iStore_Catalog.Host"
echo.
call docker image prune --all --force --filter "label=project=iStore_IdentityServer"
echo.
call docker image prune --all --force --filter "label=project=iStore_Web.Client"

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
