@echo off
title install_csgo.bat
%~dp0..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 740 validate +exit