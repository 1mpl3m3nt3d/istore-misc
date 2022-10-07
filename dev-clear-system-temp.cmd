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

echo.
pause
