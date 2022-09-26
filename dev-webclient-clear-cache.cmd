@echo off

cd /d %~dp0

cd ..

cd istore-webclient

echo.
echo Cleaning...
echo.

del /f /q ".pnp.cjs"
del /f /q ".pnp.loader.mjs"
del /f /q ".yarn\install-state.gz"
del /f /q "tsconfig.tsbuildinfo"
del /f /q "Web.Client.esproj.user"
del /f /q "yarn.lock"

rd /s /q ".next"
rd /s /q ".vercel"
rd /s /q ".vs"
rd /s /q "bin"
rd /s /q "build"
rd /s /q "node_modules"
rd /s /q "obj"

echo.
echo Done!

echo.
pause
