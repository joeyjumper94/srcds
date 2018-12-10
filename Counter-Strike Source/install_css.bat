@echo off
title install_css.bat
"%~dp0..\steamcmd\steamcmd.exe" +login anonymous +force_install_dir %~dp0 +app_update 232330 -beta default validate +quit
timeout 10
exit