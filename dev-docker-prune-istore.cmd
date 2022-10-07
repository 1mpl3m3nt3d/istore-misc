@echo off

cd /d %~dp0

echo.
call docker image prune --all --force --filter "label=project=iStore_Basket.Host"
echo.
call docker image prune --all --force --filter "label=project=iStore_Catalog.Host"
echo.
call docker image prune --all --force --filter "label=project=iStore_IdentityServer"
echo.
call docker image prune --all --force --filter "label=project=iStore_Web.Client"

echo.
pause
