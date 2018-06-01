@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_css.bat
start stop_css.bat
:srcds
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -game cstrike
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_css.bat"
TIMEOUT 10
start stop_css.bat
goto srcds
