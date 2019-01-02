@echo off
title install_tf2_default.bat
"%~dp0"..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 232250 -beta default validate +quit
xcopy /y/s "%~dp0"..\team\* "%~dp0"\*
xcopy /y "%~dp0"\bin2 "%~dp0"\bin
xcopy /y/s "%~dp0"\platform2\* "%~dp0"\platform\*
timeout 10
exit