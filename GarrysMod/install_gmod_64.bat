@echo off
title install_gmod.bat
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 4020 -beta x86-64 validate +quit
if exist "%~dp0"\steamapps\downloading\4020 (
	goto :FAIL:
)
xcopy /y/s "%~dp0"\garrysmod2\* "%~dp0"\garrysmod\*
TIMEOUT 10
exit