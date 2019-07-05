@echo off
title install_hl2.bat
echo you must be logged in to an account that owns this content
echo type your name and password into the following prompts,
echo if you use steam guard mobile authentication, you'll have to enter that as well
set /p name="type your steam account username>"
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login %name% +force_install_dir %~dp0 +app_update 220 validate +quit
if exist "%~dp0"\steamapps\downloading\220 (
	goto :CHECK:
)
goto :END:
:CHECK:
for /F %%i in ('dir /b ""%~dp0"\steamapps\downloading\220\*.*"') do (
	goto :FAIL:
)
:END:
xcopy /y/s "%~dp0"..\half-life\* "%~dp0"\*
TIMEOUT 10
exit