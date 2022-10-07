@echo off

cd /d %~dp0

cd ..

echo.
call dotnet run --configuration Release --project istore-identityserver/IdentityServer/IdentityServer/IdentityServer.csproj

echo.
pause
