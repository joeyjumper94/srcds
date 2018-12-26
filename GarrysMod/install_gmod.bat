@echo off
title install_gmod.bat
set /p type="type one of the following: default, chromium, x86-64, dev"
if %type%=="chromium"(
	goto :chromium:
)
if %type%=="x86-64"(
	goto :x86-64:
)
if %type%=="dev"(
	goto :dev:
)

:default:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 4020 -beta default validate +quit
goto :end:

:dev:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 4020 -beta dev validate +quit
goto :end:

:chromium:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 4020 -beta chromium validate +quit
goto :end:

:x86-64:
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 4020 -beta x86-64 -betapassword z8MvH7F6OW3HExir validate +quit

:end:
xcopy /y/s "%~dp0"\garrysmod2\* "%~dp0"\garrysmod\*
TIMEOUT 10
exit
