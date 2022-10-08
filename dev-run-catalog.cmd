@echo off

cd /d %~dp0

cd ..
cd istore-catalog

echo.
call dotnet run --configuration Release --project Catalog/Catalog.Host/Catalog.Host.csproj

echo.
pause
