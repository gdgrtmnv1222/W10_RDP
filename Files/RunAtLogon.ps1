$credits = $env:COMPUTERNAME + "\Administrator @#Coffin123456"
Write-Host($credits);

$Action=New-ScheduledTaskAction -Execute "C:\Temp\RunManualyDownload.bat"
$Trigger=New-ScheduledTaskTrigger -AtLogOn
$Set=New-ScheduledTaskSettingsSet
$Principal=New-ScheduledTaskPrincipal -UserID "$env:username" -LogonType Interactive -RunLevel Highest
$Task=New-ScheduledTask -Action $Action -Trigger $Trigger -Settings $Set -Principal $Principal
Register-ScheduledTask -TaskName PowerShellAtLogon -InputObject $Task

PowerShell -NoProfile -ExecutionPolicy Bypass -Command " 'Write-Host("Enter")'"
