@echo off
title install_bms.bat
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 346680 -beta default validate +quit
if exist "%~dp0"..\black\steamapps\downloading\346680\bms (
	goto :FAIL:
)
xcopy /y/s "%~dp0"..\black\* "%~dp0"\*
timeout 10
exit