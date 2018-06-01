@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_csgo.bat
start stop_csgo.bat
:srcds
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -console -game csgo -secure +maxplayers 22 +map de_nuke
::don't touch anything below here
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_csgo.bat"
TIMEOUT 10
start stop_csgo.bat
goto srcds
