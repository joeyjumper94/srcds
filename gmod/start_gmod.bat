@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_gmod.bat
start stop_gmod.bat
:srcds
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -console -game garrysmod +host_workshop_collection 1282274160 +map cp_canterlot  +gamemode "darkrp" +hostname "Equestrian Wastelanders GMOD"
::gm_flatgrass +gamemode "darkrp" +hostname "Equestrian Wastelanders GMOD"
::don't touch anything below here
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_gmod.bat"
TIMEOUT 1
start stop_gmod.bat
goto srcds