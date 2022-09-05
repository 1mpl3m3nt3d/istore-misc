@echo off

cd /d %~dp0

cd ..

call dotnet run --configuration Release --project istore-catalog/Catalog/Catalog.Host/Catalog.Host.csproj

pause
