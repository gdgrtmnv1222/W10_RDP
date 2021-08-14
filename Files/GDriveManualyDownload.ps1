Start-Sleep -s 20
Start-Process -FilePath chrome.exe -ArgumentList "https://drive.google.com/u/0/uc?export=download&confirm=7nyL&id=1fdvoj8loqsl5UrpESZTs-S0Y6bBS6Z0A"
Start-Sleep -s 5
$i = 0;
$times = 12;
for (;;) {
    if ($i -le  $times) {
        Write-Host($i)
        $wsh = New-Object -ComObject WScript.Shell
            $wsh.SendKeys('{TAB}')
    }
    if ($i -eq $times) {
        break
    }
    $i++
    Start-Sleep -s 1
}
Write-Host("Tab szor" + $i) 
Write-Host("") 
Write-Host("Enter")
Start-Sleep -s 1
$wsh = New-Object -ComObject WScript.Shell
    $wsh.SendKeys('{ENTER}')
