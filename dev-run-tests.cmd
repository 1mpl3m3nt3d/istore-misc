@echo off

cd /d %~dp0

cd ..

echo.
call dotnet test istore-basket\.
echo.
call dotnet test istore-catalog\.
echo.
call dotnet test istore-identityserver\.

echo.
pause
