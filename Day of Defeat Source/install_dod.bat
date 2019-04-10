@echo off
title install_dod.bat
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 232290 -beta default validate +quit
if exist "%~dp0"\..\day\steamapps\downloading\232290 (
	goto :FAIL:
)
xcopy /y/s "%~dp0"..\day\* "%~dp0"\*
timeout 10
exit