@echo off

cd /d %~dp0

echo.
set /p drive="Enter the letter of the prefered drive: "

call vs_Community.exe --layout %drive%:\VSCLayout --useLatestInstaller

::rem --noWeb ^
::rem --locale en-US ^
::rem --installPath "C:\VSC" ^
::rem --nickname VSC ^
::rem --lang en-US ^
::rem --addProductLang en-US ^
::rem --path install="C:\VSC" ^
::rem --path cache="C:\VSC\cache" ^
::rem --path shared="C:\VSC\shared" ^
::rem --all ^
::rem --allWorkloads ^
::rem --add Microsoft.VisualStudio.Workload.CoreEditor ^
::rem --add Microsoft.VisualStudio.Workload.Azure ^
::rem --add Microsoft.VisualStudio.Workload.Data ^
::rem --add Microsoft.VisualStudio.Workload.DataScience ^
::rem --add Microsoft.VisualStudio.Workload.ManagedDesktop ^
::rem --add Microsoft.VisualStudio.Workload.ManagedGame ^
::rem --add Microsoft.VisualStudio.Workload.NativeCrossPlat ^
::rem --add Microsoft.VisualStudio.Workload.NativeDesktop ^
::rem --add Microsoft.VisualStudio.Workload.NativeGame ^
::rem --add Microsoft.VisualStudio.Workload.NativeMobile ^
::rem --add Microsoft.VisualStudio.Workload.NetCrossPlat ^
::rem --add Microsoft.VisualStudio.Workload.NetWeb ^
::rem --add Microsoft.VisualStudio.Workload.Node ^
::rem --add Microsoft.VisualStudio.Workload.Office ^
::rem --add Microsoft.VisualStudio.Workload.Python ^
::rem --add Microsoft.VisualStudio.Workload.Universal ^
::rem --add Microsoft.VisualStudio.Workload.VisualStudioExtension ^
::rem --includeRecommended ^
::rem --includeOptional ^
::rem --installWhileDownloading ^
::rem --downloadThenInstall ^
::rem --cache ^
::rem --nocache ^
::rem --quiet ^
::rem --passive ^
::rem --norestart ^
::rem --force ^
::rem --wait ^

echo.
echo ErrorLevel = %ErrorLevel%
echo.

pause
