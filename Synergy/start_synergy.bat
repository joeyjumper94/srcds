@echo off
set synergy_path="%~dp0"
set hl2_path="%~dp0"..\"half-life 2"
cd %hl2_path%
if not exist ./hl2 (
	goto :fail:
)
cd %synergy_path%
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title start_synergy.bat
:srcds
start stop_synergy.bat
echo (%time%) srcds started.
::don't touch anything above here
start /wait srcds.exe -game synergy -console +maxplayers 22 +map syn_antlions_way +hostname "Equestrian Wastelanders Synergy"
echo (%time%) WARNING: srcds closed or crashed, restarting.
taskkill /fi "windowtitle eq stop_synergy.bat"
TIMEOUT 10
goto srcds
:fail:
echo half-life 2 must be installed
TIMEOUT 10
cd %hl2_path%
start install_hl2.bat
