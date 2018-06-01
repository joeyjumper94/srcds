@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_tf2.bat
start stop_tf2.bat
:srcds
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -console -game tf +map ctf_2fort +maxplayers 32 -tickrate 50 +hostname "equestrian wastelanders tf2"
::don't touch anything below here
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_tf2.bat"
TIMEOUT 10
start stop_tf2.bat
goto srcds