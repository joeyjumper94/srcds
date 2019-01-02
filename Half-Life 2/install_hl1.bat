@echo off
title install_hl1.bat
echo you must be logged in to an account that owns this content
echo type your name and password into the following prompts,
echo if you use steam guard mobile authentication, you'll have to enter that as well
set /p name="type your steam account username>"
"%~dp0"..\steamcmd\steamcmd.exe +login %name% +force_install_dir %~dp0 +app_update 280 validate +quit
xcopy /y/s "%~dp0"..\half-life\* "%~dp0"\*
TIMEOUT 10
exit