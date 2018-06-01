@echo off
title install_gmod.bat
%~dp0..\steamcmd\steamcmd.exe +login anonymous +force_install_dir C:\srcds\gmod +app_update 4020 validate +quit
xcopy /y/s %~dp0\garrysmod2\* %~dp0\garrysmod\*
TIMEOUT 10
exit