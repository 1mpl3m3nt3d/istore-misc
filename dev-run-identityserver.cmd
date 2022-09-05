@echo off

cd /d %~dp0

cd ..

call dotnet run --configuration Release --project istore-identityserver/IdentityServer/IdentityServer/IdentityServer.csproj

pause
