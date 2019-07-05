@echo off
title install_dod.bat
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 232290 -beta default validate +quit
if exist "%~dp0"\steamapps\downloading\232390 (
	goto :CHECK:
)
goto :END:
:CHECK:
for /F %%i in ('dir /b ""%~dp0"\steamapps\downloading\232390\*.*"') do (
	goto :FAIL:
)
:END:
xcopy /y/s "%~dp0"..\day\* "%~dp0"\*
timeout 10
exit