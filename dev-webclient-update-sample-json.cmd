@echo off

cd /d %~dp0

cd ..
cd istore-webclient

echo.
call npx --yes npm-check-updates@latest --target latest --pre 1 --upgrade --color ^
--concurrency 8 --configFilePath . --configFileName .ncurc.json --cwd . ^
--dep prod,dev,bundle,optional,peer --errorLevel 1 --packageFile package.sample.json

echo.
pause
