@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_bms.bat
start stop_bms.bat
:srcds
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -console -game bms -insecure +maxplayers 22 +map dm_rail +hostname "Equestrian Wastelanders BM:S"
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_bms.bat"
TIMEOUT 10
start stop_bms.bat
goto srcds
