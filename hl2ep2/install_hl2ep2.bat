@echo off
title install hl2ep2.bat
echo you must be logged in to an account that owns this content
echo type your name and password into the following prompts,
echo if you use steam guard mobile authentication, you'll have to enter that as well
set /p name="type your steam account username"
set /p pass="type your steam account password"
%~dp0..\steamcmd\steamcmd.exe +login %name% %pass% +force_install_dir %~dp0 +app_update 420 +app_update 420 validate +quit
TIMEOUT 10
exit