@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_dod.bat
start stop_dod.bat
:srcds
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -console -game dod -secure +maxplayers 22 +map de_nuke +hostname "Equestrian Wastelanders CS:S"
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_dod.bat"
TIMEOUT 10
start stop_dod.bat
goto srcds
