@echo off

cd /d %~dp0

set folders=("%SystemDrive%\Users\%username%\AppData\Local\Temp\*" "%SystemDrive%\Users\%username%\AppData\Roaming\Temp\*" "%SystemDrive%\Users\%username%\AppData\Temp\*" "%SystemDrive%\Users\%username%\Temp\*" "%SystemDrive%\Users\Temp\*" "%SystemDrive%\Windows\Temp\*" "%SystemDrive%\Temp\*")

echo.
echo Clearing Temporary System Files and Folders ...
echo.

echo.
for %%f in %folders% do del /f /s /q "%%f"
echo.
for /d %%d in %folders% do rd "%%d" /s /q

cd ..

echo.
echo Clearing Temporary VS Files ...
echo.

del /f /q "istore-basket\Basket.sln.DotSettings"
del /f /q "istore-basket\Basket.sln.DotSettings.user"
del /f /q "istore-basket\Basket\Basket.Host\Basket.Host.csproj.user"
del /f /q "istore-basket\Basket\Basket.UnitTests\Basket.UnitTests.csproj.user"

del /f /q "istore-basket\Infrastructure\Infrastructure\Infrastructure.csproj.user"
del /f /q "istore-basket\Infrastructure\Infrastructure.UnitTests\Infrastructure.UnitTests.csproj.user"
del /f /q "istore-basket\Infrastructure\Infrastructure\Infrastructure\Infrastructure.csproj.user"
del /f /q "istore-basket\Infrastructure\Infrastructure\Infrastructure.UnitTests\Infrastructure.UnitTests.csproj.user"

del /f /q "istore-catalog\Catalog.sln.DotSettings"
del /f /q "istore-catalog\Catalog.sln.DotSettings.user"
del /f /q "istore-catalog\Catalog\Catalog.Host\Catalog.Host.csproj.user"
del /f /q "istore-catalog\Catalog\Catalog.UnitTests\Catalog.UnitTests.csproj.user"

del /f /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure.csproj.user"
del /f /q "istore-catalog\Infrastructure\Infrastructure.UnitTests\Infrastructure.UnitTests.csproj.user"
del /f /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure\Infrastructure.csproj.user"
del /f /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure.UnitTests\Infrastructure.UnitTests.csproj.user"

del /f /q "istore-identityserver\IdentityServer.sln.DotSettings"
del /f /q "istore-identityserver\IdentityServer.sln.DotSettings.user"
del /f /q "istore-identityserver\IdentityServer\IdentityServer\IdentityServer.csproj.user"
del /f /q "istore-identityserver\IdentityServer\IdentityServer\tempkey.jwk

del /f /q "istore-infrastructure\Infrastructure.sln.DotSettings"
del /f /q "istore-infrastructure\Infrastructure.sln.DotSettings.user"
del /f /q "istore-infrastructure\Infrastructure\Infrastructure\Infrastructure.csproj.user"
del /f /q "istore-infrastructure\Infrastructure\Infrastructure.UnitTests\Infrastructure.UnitTests.csproj.user"

echo.
echo Clearing Temporary VS Folders ...
echo.

rd /s /q "istore-basket\.vs"

rd /s /q "istore-basket\Basket\Basket.Host\.vs"
rd /s /q "istore-basket\Basket\Basket.Host\bin"
rd /s /q "istore-basket\Basket\Basket.Host\keys"
rd /s /q "istore-basket\Basket\Basket.Host\obj"
rd /s /q "istore-basket\Basket\Basket.UnitTests\.vs"
rd /s /q "istore-basket\Basket\Basket.UnitTests\bin"
rd /s /q "istore-basket\Basket\Basket.UnitTests\keys"
rd /s /q "istore-basket\Basket\Basket.UnitTests\obj"

rd /s /q "istore-basket\Infrastructure\Infrastructure\.vs"
rd /s /q "istore-basket\Infrastructure\Infrastructure\bin"
rd /s /q "istore-basket\Infrastructure\Infrastructure\keys"
rd /s /q "istore-basket\Infrastructure\Infrastructure\obj"
rd /s /q "istore-basket\Infrastructure\Infrastructure.UnitTests\.vs"
rd /s /q "istore-basket\Infrastructure\Infrastructure.UnitTests\bin"
rd /s /q "istore-basket\Infrastructure\Infrastructure.UnitTests\keys"
rd /s /q "istore-basket\Infrastructure\Infrastructure.UnitTests\obj"

rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure\.vs"
rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure\bin"
rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure\keys"
rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure\obj"
rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure.UnitTests\.vs"
rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure.UnitTests\bin"
rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure.UnitTests\keys"
rd /s /q "istore-basket\Infrastructure\Infrastructure\Infrastructure.UnitTests\obj"

rd /s /q "istore-catalog\.vs"

rd /s /q "istore-catalog\Catalog\Catalog.Host\.vs"
rd /s /q "istore-catalog\Catalog\Catalog.Host\bin"
rd /s /q "istore-catalog\Catalog\Catalog.Host\keys"
rd /s /q "istore-catalog\Catalog\Catalog.Host\obj"
rd /s /q "istore-catalog\Catalog\Catalog.UnitTests\.vs"
rd /s /q "istore-catalog\Catalog\Catalog.UnitTests\bin"
rd /s /q "istore-catalog\Catalog\Catalog.UnitTests\keys"
rd /s /q "istore-catalog\Catalog\Catalog.UnitTests\obj"

rd /s /q "istore-catalog\Infrastructure\Infrastructure\.vs"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\bin"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\keys"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\obj"
rd /s /q "istore-catalog\Infrastructure\Infrastructure.UnitTests\.vs"
rd /s /q "istore-catalog\Infrastructure\Infrastructure.UnitTests\bin"
rd /s /q "istore-catalog\Infrastructure\Infrastructure.UnitTests\keys"
rd /s /q "istore-catalog\Infrastructure\Infrastructure.UnitTests\obj"

rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure\.vs"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure\bin"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure\keys"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure\obj"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure.UnitTests\.vs"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure.UnitTests\bin"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure.UnitTests\keys"
rd /s /q "istore-catalog\Infrastructure\Infrastructure\Infrastructure.UnitTests\obj"

rd /s /q "istore-identityserver\.vs"

rd /s /q "istore-identityserver\IdentityServer\IdentityServer\.vs"
rd /s /q "istore-identityserver\IdentityServer\IdentityServer\bin"
rd /s /q "istore-identityserver\IdentityServer\IdentityServer\keys"
rd /s /q "istore-identityserver\IdentityServer\IdentityServer\obj"

rd /s /q "istore-infrastructure\.vs"

rd /s /q "istore-infrastructure\Infrastructure\Infrastructure\.vs"
rd /s /q "istore-infrastructure\Infrastructure\Infrastructure\bin"
rd /s /q "istore-infrastructure\Infrastructure\Infrastructure\keys"
rd /s /q "istore-infrastructure\Infrastructure\Infrastructure\obj"
rd /s /q "istore-infrastructure\Infrastructure\Infrastructure.UnitTests\.vs"
rd /s /q "istore-infrastructure\Infrastructure\Infrastructure.UnitTests\bin"
rd /s /q "istore-infrastructure\Infrastructure\Infrastructure.UnitTests\keys"
rd /s /q "istore-infrastructure\Infrastructure\Infrastructure.UnitTests\obj"

echo.
echo Clearing Temporary System Files and Folders ...
echo.

echo.
for %%f in %folders% do del /f /s /q "%%f"
echo.
for /d %%d in %folders% do rd "%%d" /s /q

echo.
pause
