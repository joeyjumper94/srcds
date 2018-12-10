@echo off
set synergy_path="%~dp0"
set hl2_path="%~dp0"..\"half-life 2"
cd %hl2_path%
if not exist ./hl2 (
	goto :fail:
)
cd %synergy_path%
cls
start srcds.exe -game synergy
:fail:
echo half-life 2 must be installed
TIMEOUT 10
cd %hl2_path%
start install_hl2.bat