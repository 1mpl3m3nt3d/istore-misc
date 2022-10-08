@echo off

cd /d %~dp0

cd ..
cd istore-webclient

echo.
call yarn serve

echo.
pause
