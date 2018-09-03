@echo off
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_gmod.bat
:srcds
start stop_gmod.bat
echo (%time%) srcds started.
::don't touch anything above here
if EXIST .\srcds_x64.exe (
	start /wait srcds_x64.exe -insecure -console +map gm_construct +gamemode "sandbox" +hostname "Equestrian Wastelanders GMOD" +host_workshop_collection ""
) else (
	start /wait srcds.exe -insecure -console +map gm_construct +gamemode "sandbox" +hostname "Equestrian Wastelanders GMOD" +host_workshop_collection ""
)
::don't touch anything below here
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_gmod.bat"
TIMEOUT 1
goto srcds