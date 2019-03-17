@echo off
title install_dod.bat
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 232290 -beta default validate +quit
xcopy /y/s "%~dp0"..\day\* "%~dp0"\*
timeout 10
exit