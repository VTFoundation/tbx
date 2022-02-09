@echo off

:start
cls
echo  ^>^> Which Operation you want to perform?
echo.
echo  1 --^> Install Carbon Black (CB) Sensor.
echo  2 --^> Uninstall Carbon Black (CB) Sensor.
echo  3 --^> Uninstall Carbon Black (CB) Sensor + Rename Hostname.
echo  4 --^> Install Zerotier.
echo  5 --^> New Hostname Generator.
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
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/install_cb.ps1 -o C:\ProgramData\cb_installer.ps1 && powershell.exe C:\ProgramData\cb_installer.ps1
	pause
	del C:\ProgramData\cb_installer.ps1
	goto start
) 
if %option%==2 (
	cls
	"C:\Program Files\Confer\uninstall.exe" /uninstall
	echo.
	echo  ** Carbon Black (CB^) Sensor Uninstalled Successfully ** 
	echo.
	pause
	goto start
) 
if %option%==3 (
	cls
	"C:\Program Files\Confer\uninstall.exe" /uninstall
	echo.
	echo  ** Carbon Black (CB^) Sensor Uninstalled Successfully ** 
	echo.
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/win-hostname-generator.ps1 -o C:\ProgramData\hn_gen.ps1 && powershell.exe C:\ProgramData\hn_gen.ps1 && del C:\ProgramData\hn_gen.ps1
	echo.
	goto start
) 
if %option%==4 (
	cls
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/install_zerotier.ps1 -o C:\ProgramData\zt_install.ps1 && powershell.exe C:\ProgramData\zt_install.ps1
	echo.
	pause
	del C:\ProgramData\zt_install.ps1
	goto start
)
if %option%==5 (
	cls
	curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/win-hostname-generator.ps1 -o C:\ProgramData\hn_gen.ps1 && powershell.exe C:\ProgramData\hn_gen.ps1 && del C:\ProgramData\hn_gen.ps1
	echo.
	goto start
) else (
	cls
	echo  ^>^> Please Enter Correct value ...
	echo.
	pause
	goto start
)

pause
