@echo off

cd /d %~dp0

cd ..

cd istore-webclient

start yarn start

cd ..

start dotnet run --configuration Release --project istore-basket/Basket/Basket.Host/Basket.Host.csproj
start dotnet run --configuration Release --project istore-catalog/Catalog/Catalog.Host/Catalog.Host.csproj
start dotnet run --configuration Release --project istore-identityserver/IdentityServer/IdentityServer/IdentityServer.csproj

pause
