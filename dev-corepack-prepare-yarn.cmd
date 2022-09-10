@echo off

cd /d %~dp0

echo.
echo Enabling corepack...
call corepack enable

echo.
echo Preparing yarn stable...
call corepack prepare yarn@stable --activate

echo.
pause
