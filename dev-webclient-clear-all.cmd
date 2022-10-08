@echo off

cd /d %~dp0

cd ..
cd istore-webclient

echo.
echo Cleaning...
echo.

del /f /q ".pnp.cjs"
del /f /q ".pnp.loader.mjs"
del /f /q ".vim\coc-settings.json"
del /f /q ".yarn\install-state.gz"
del /f /q ".yarnrc"
del /f /q ".yarnrc.yml"
del /f /q "tsconfig.tsbuildinfo"
del /f /q "Web.Client.esproj.user"
del /f /q "yarn.lock"

rd /s /q ".next"
rd /s /q ".vercel"
rd /s /q ".vim"
rd /s /q ".vs"
rd /s /q ".yarn\cache"
rd /s /q ".yarn\patches"
rd /s /q ".yarn\plugins"
rd /s /q ".yarn\releases"
rd /s /q ".yarn\sdks"
rd /s /q ".yarn\unplugged"
rd /s /q ".yarn\versions"
rd /s /q ".yarn"
rd /s /q "bin"
rd /s /q "build"
rd /s /q "node_modules"
rd /s /q "obj"

echo.
echo Done!

echo.
pause
