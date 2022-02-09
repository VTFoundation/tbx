@echo off

:start
cls
echo  ^>^> Which Operation you want to perform?
echo.
echo  1 --^> Install Carbon Black (CB) Sensor.
echo  2 --^> Uninstall Carbon Black (CB) Sensor + Rename Hostname.
echo  3 --^> Install Zerotier.
echo  4 --^> New Hostname Generator.
echo.
echo  0 --^> Exit.
echo.

set option= Option: 
set /p option= %option%

if %option%==0 (
	echo.
	echo  GoodBye ...
	echo  See You Later ...
	echo.
	exit
)
if %option%==1 (
	cls
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/install_cb.ps1 | powershell
	pause
) 
if %option%==2 (
	cls
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/uninstall_cb.bat | cmd
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/win-hostname-generator.ps1 | powershell
	pause
) 
if %option%==3 (
	cls
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/install_zerotier.ps1 | powershell
	pause
)
if %option%==4 (
	cls
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/win-hostname-generator.ps1 | powershell
	pause
) else (
	cls
	echo  ^>^> Please Enter Correct value ...
	pause
	goto start
)

pause