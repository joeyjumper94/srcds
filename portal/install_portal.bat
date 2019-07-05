@echo off
title install_portal.bat
echo you must be logged in to an account that owns this content
echo type your name and password into the following prompts,
echo if you use steam guard mobile authentication, you'll have to enter that as well
set /p name="type your steam account username>"
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login %name% +force_install_dir %~dp0 +app_update 400 validate +quit
if exist "%~dp0"\steamapps\downloading\400 (
	goto :CHECK:
)
goto :END:
:CHECK:
for /F %%i in ('dir /b ""%~dp0"\steamapps\downloading\400\*.*"') do (
	goto :FAIL:
)
:END:
TIMEOUT 10
exit