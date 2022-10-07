@echo off

cd /d %~dp0

cd ..

cd istore-webclient

echo.
start yarn start

cd ..

echo.
start dotnet run --configuration Release --project istore-basket/Basket/Basket.Host/Basket.Host.csproj

echo.
start dotnet run --configuration Release --project istore-catalog/Catalog/Catalog.Host/Catalog.Host.csproj

echo.
start dotnet run --configuration Release --project istore-identityserver/IdentityServer/IdentityServer/IdentityServer.csproj

echo.
pause
