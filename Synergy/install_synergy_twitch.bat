@echo off
title install_synergy_default.bat
echo you have to log into steamcmd if you want to fully update/download synergy
echo it is possible to log in anonymously for this
echo type your name and password into the following prompts,
echo if you use steam guard mobile authentication, you'll have to enter that as well
set /p name="type your steam account username>"
"%~dp0"..\steamcmd\steamcmd.exe +login %name% +force_install_dir %~dp0 +app_update 17520 -beta twitch -betapassword jonnyhawtsauce -validate +quit
timeout 10
exit