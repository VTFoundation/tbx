#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass

mkdir "C:\ProgramData\ZeroTier_Temp"
Invoke-WebRequest https://download.zerotier.com/dist/ZeroTier%20One.msi -OutFile C:\ProgramData\ZeroTier_Temp\ZeroTierOne.msi
Write-Output "`nInstalling ZeroTier One ..." 
# msiexec /qn /i C:\ProgramData\ZeroTier_Temp\ZeroTierOne.msi /L*vx "C:\ProgramData\ZeroTier_Temp\ZeroTier_log_install.txt"
C:\ProgramData\ZeroTier_Temp\ZeroTierOne.msi
sleep -s 5
Write-Output " ** ZeroTier One installed successfully **" 
rm -r "C:\ProgramData\ZeroTier_Temp"
