@echo off

cd /d %~dp0

cd ..

cd istore-webclient

echo.
call npm --global update

echo.
call npx --yes npm-check-updates@latest --target latest --pre 1 --upgrade --color ^
--concurrency 8 --configFilePath . --configFileName .ncurc.json --cwd . ^
--dep prod,dev,bundle,optional,peer --errorLevel 1

echo.
call yarn install
echo.
call yarn up
echo.
call yarn
echo.
call yarn dlx @yarnpkg/sdks vscode
echo.
call yarn

echo.
pause
