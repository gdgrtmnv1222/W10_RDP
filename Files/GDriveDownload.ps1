# Download the file
$zipFile = "https://drive.google.com/uc?export=download&id=1BmmoiKRdTTGlKWEPBP14XI0lwOYwdu1W"
Invoke-WebRequest -Uri $zipFile -OutFile C:\Temp\TempDevVD.vhdx


#Get-ExecutionPolicy -list
#Set-ExecutionPolicy unrestricted
#powershell.exe -executionpolicy -bypass
#Unblock-File -Path .\\#FentMarad.ps1