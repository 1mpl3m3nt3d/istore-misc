@echo off

cd /d %~dp0

cd ..

call dotnet run --configuration Release --project istore-basket/Basket/Basket.Host/Basket.Host.csproj

pause
