@echo off

cd /d %~dp0

cd ..

cd istore-webclient

echo.
call yarn server

echo.
pause
