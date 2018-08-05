@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_gmod.bat
start stop_gmod.bat
:srcds
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -insecure -console -game garrysmod +host_workshop_collection COLLECTION_ID +map gm_flatgrass +gamemode sandbox +hostname "equestrian wastelanders GMod"
::don't touch anything below here
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_gmod.bat"
TIMEOUT 1
start stop_gmod.bat
goto srcds