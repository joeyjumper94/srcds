@echo off
title install_csgo.bat
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 740 -beta default validate +quit
xcopy /y/s "%~dp0"..\counter-strike\* "%~dp0"\*
timeout 10
exit