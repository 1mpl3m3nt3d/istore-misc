@echo off

cd /d %~dp0

cd ..
cd istore-basket

echo.
call dotnet run --configuration Release --project Basket/Basket.Host/Basket.Host.csproj

echo.
pause
