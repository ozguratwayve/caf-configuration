while ((Get-Service WindowsAzureGuestAgent).Status -ne 'Running') { Start-Sleep -s 5 }
& $env:SystemRoot/System32/Sysprep/Sysprep.exe /oobe /generalize /quiet /quit
choco install googlechrome -fy
choco install vscode -fy
choco install git -fy
