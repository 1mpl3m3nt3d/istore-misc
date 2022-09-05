@echo off

cd /d %~dp0

cd ..

call dotnet test istore-basket\.
call dotnet test istore-catalog\.
call dotnet test istore-identityserver\.

pause
