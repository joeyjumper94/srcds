@echo off
title install_tf2.bat
%~dp0..\steamcmd\steamcmd.exe +login anonymous +force_install_dir %~dp0 +app_update 232250 validate +quit
xcopy /y %~dp0\bin2 %~dp0\bin
xcopy /y/s %~dp0\platform2\* %~dp0\platform\*
timeout 10
exit