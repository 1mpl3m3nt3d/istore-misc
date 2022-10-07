@echo off

cd /d %~dp0

echo.
set /p drive="Enter the letter of the prefered drive: "

echo.
start /wait %drive%:\VSCLayout\vs_Community.exe ^
--locale en-US ^
--installPath "C:\VSC" ^
--nickname VSC ^
--addProductLang en-US ^
--add Microsoft.VisualStudio.Workload.CoreEditor ^
--add Microsoft.VisualStudio.Workload.Azure ^
--add Microsoft.VisualStudio.Workload.Data ^
--add Microsoft.VisualStudio.Workload.DataScience ^
--add Microsoft.VisualStudio.Workload.ManagedDesktop ^
--add Microsoft.VisualStudio.Workload.ManagedGame ^
--add Microsoft.VisualStudio.Workload.NetCrossPlat ^
--add Microsoft.VisualStudio.Workload.NetWeb ^
--add Microsoft.VisualStudio.Workload.Node ^
--add Microsoft.VisualStudio.Workload.Office ^
--add Microsoft.VisualStudio.Workload.Python ^
--add Microsoft.VisualStudio.Workload.Universal ^
--add Microsoft.VisualStudio.Workload.VisualStudioExtension ^
--includeRecommended ^
--installWhileDownloading ^
--cache ^
--passive ^
--norestart ^
--wait

::rem --noWeb ^
::rem --path install="C:\VSC" ^
::rem --path cache="C:\VSC\cache" ^
::rem --path shared="C:\VSC\shared" ^
::rem --lang en-US ^
::rem --all ^
::rem --allWorkloads ^
::rem --add Microsoft.VisualStudio.Workload.NativeCrossPlat ^
::rem --add Microsoft.VisualStudio.Workload.NativeDesktop ^
::rem --add Microsoft.VisualStudio.Workload.NativeGame ^
::rem --add Microsoft.VisualStudio.Workload.NativeMobile ^
::rem --includeOptional ^
::rem --downloadThenInstall ^
::rem --nocache ^
::rem --useLatestInstaller ^
::rem --quiet ^
::rem --force ^

echo.
echo ErrorLevel = %ErrorLevel%

echo.
pause
