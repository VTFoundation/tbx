#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass

# Renaming Hostname
Write-Output "`nRenaming Hostname ..."
$chars = [char[]]"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$nums = [char[]]"0123456789"
$newname = [string](($chars[0..25]|Get-Random)+(($chars|Get-Random -Count 4) -join ""))
$newname = "$newname"+(($nums|Get-Random -Count 2) -join "")
Rename-Computer -NewName $newname
Write-Output " ** New Hostname: $newname **`n"
Read-Host -Prompt "Press enter to reboot ..."
Restart-Computer
