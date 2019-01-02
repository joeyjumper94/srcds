@echo off
title install_bms.bat
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 346680 -beta default validate +quit
timeout 10
exit