@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_gmod.bat
start stop_gmod.bat
:srcds
IF EXIST ".\srcds_x64.exe" (
	goto :64:
) else (
	goto :32:
)
:end:
echo (%time%) WARNING: srcds closed or crashed, restarting.
TIMEOUT 1
taskkill /fi "windowtitle eq stop_gmod.bat"
TIMEOUT 1
start stop_gmod.bat
goto srcds


:32:
	echo (%time%) srcds started in 32 bits.
	::you can edit the line below here for the 32 bit server
	start /wait srcds.exe -insecure -console -game garrysmod +map rp_downtown_em_hs_14 +gamemode "darkrp" +hostname "Equestrian Wastelanders GMOD"
:: +host_workshop_collection 357066195
goto :end:
:64:
	echo (%time%) srcds started in 64 bits.
	::you can edit the line below here for the 64 bit server
	start /wait srcds_x64.exe -insecure -console -game garrysmod +map rp_downtown_em_hs_14 +gamemode "darkrp" +hostname "Equestrian Wastelanders GMOD"
::	+host_workshop_collection 357066195
goto :end:
