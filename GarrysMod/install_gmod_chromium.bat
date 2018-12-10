@echo off
title install_gmod.bat
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir "%~dp0" +app_update 4020 -beta chromium validate +quit
xcopy /y/s "%~dp0"\garrysmod2\* "%~dp0"\garrysmod\*
TIMEOUT 10
exit