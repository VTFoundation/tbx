#Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

mkdir "C:\ProgramData\CB_Temp"
Invoke-WebRequest https://bit.ly/3za1EW3 -OutFile C:\ProgramData\CB_Temp\cb_installer.msi
Write-Output "`nInstalling Carbon Black (CB) Sensor ..." 
msiexec /qn /i C:\ProgramData\CB_Temp\cb_installer.msi /L*vx "C:\ProgramData\CB_Temp\CB_log_install.txt" COMPANY_CODE=E8D9S78HWP5@31SUPKA
sleep -s 15
Write-Output " ** Carbon Black (CB) Sensor installed successfully **" 
rm -r "C:\ProgramData\CB_Temp"
