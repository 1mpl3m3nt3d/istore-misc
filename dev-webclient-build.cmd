@echo off

cd /d %~dp0

cd ..

cd istore-webclient

call yarn build

pause
