@echo off

cd /d %~dp0

cd ..

echo.
call dotnet run --configuration Release --project istore-basket/Basket/Basket.Host/Basket.Host.csproj

echo.
pause
