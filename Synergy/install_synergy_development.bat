@echo off
title install_synergy_default.bat
echo you have to log into steamcmd if you want to fully update/download synergy
echo it is possible to log in anonymously for this
echo type your name and password into the following prompts,
echo if you use steam guard mobile authentication, you'll have to enter that as well
set /p name="type your steam account username>"
:FAIL:
"%~dp0"..\steamcmd\steamcmd.exe +login %name% +force_install_dir %~dp0 +app_update 17520 -beta development -validate +quit
if exist "%~dp0"\steamapps\downloading\4020 (
	goto :CHECK:
)
goto :END:
:CHECK:
for /F %%i in ('dir /b ""%~dp0"\steamapps\downloading\4020\*.*"') do (
	goto :FAIL:
)
:END:
timeout 10
exit