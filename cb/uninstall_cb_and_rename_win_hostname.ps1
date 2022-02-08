#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass

Write-Output "`nUninstalling Carbon Black (CB) Sensor ..."
# Start-Process -FilePath .\cb_uninstall.bat -Wait -NoNewWindow
cmd.exe /c cb_uninstall.bat

Read-Host -Prompt "Press enter to continue ..."

# Renaming Hostname
Write-Output "`nRenaming Hostname ..."
$chars = [char[]]"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$nums = [char[]]"0123456789"
$newname = [string](($chars[0..25]|Get-Random)+(($chars|Get-Random -Count 4) -join ""))
$newname = "$newname"+(($nums|Get-Random -Count 2) -join "")
Rename-Computer -NewName $newname
Write-Output " ** New Hostname: $newname **"
Read-Host -Prompt "Press enter to reboot ..."
