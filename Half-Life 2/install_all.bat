@echo off
title install_all.bat
echo you must be logged in to an account that owns this content
echo type your name and password into the following prompts,
echo if you use steam guard mobile authentication, you'll have to enter that as well
set /p name="type your steam account username>"
"%~dp0"..\steamcmd\steamcmd.exe +login %name% +force_install_dir %~dp0 +app_update 420 validate +app_update 280 validate +app_update 380 validate +app_update 220 validate +app_update 340 validate
xcopy /y/s "%~dp0"..\half-life\* "%~dp0"\*
:: +quit
TIMEOUT 10
exit