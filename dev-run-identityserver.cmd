@echo off

cd /d %~dp0

cd ..
cd istore-identityserver

echo.
call dotnet run --configuration Release --project IdentityServer/IdentityServer/IdentityServer.csproj

echo.
pause
