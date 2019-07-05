@echo off
title install_tf2_default.bat
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 232250 -beta default validate +quit
if exist "%~dp0"\steamapps\downloading\232250 (
	goto :CHECK:
)
goto :END:
:CHECK:
for /F %%i in ('dir /b ""%~dp0"\steamapps\downloading\232250\*.*"') do (
	goto :FAIL:
)
:END:
xcopy /y/s "%~dp0"..\team\* "%~dp0"\*
xcopy /y "%~dp0"\bin2 "%~dp0"\bin
xcopy /y/s "%~dp0"\platform2\* "%~dp0"\platform\*
timeout 10
exit