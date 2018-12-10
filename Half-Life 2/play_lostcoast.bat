@echo off
taskkill /f /fi "windowtitle eq launch_gmod.bat"
TASKKILL /f /im "portal2.exe"
TASKKILL /f /im "portal.exe"
TASKKILL /f /im "hl2.exe"
TASKKILL /f /im "gmod_x64.exe"
cd D:\srcds\hl2
start hl2.exe -steam -game lostcoast