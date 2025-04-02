while ((Get-Service RdAgent).Status -ne 'Running') { Start-Sleep -s 5 }
while ((Get-Service WindowsAzureGuestAgent).Status -ne 'Running') { Start-Sleep -s 5 }
& $env:SystemRoot/System32/Sysprep/Sysprep.exe /oobe /generalize /quiet /quit
while($true) { $imageState = Get-ItemProperty HKLM:/SOFTWARE/Microsoft/Windows/CurrentVersion/Setup/State | Select ImageState; if($imageState.ImageState -ne 'IMAGE_STATE_GENERALIZE_RESEAL_TO_OOBE') { Write-Output $imageState.ImageState; Start-Sleep -s 10  } else { break } }
(new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1', 'C:\Windows\Temp\install.ps1')

$env:chocolateyUseWindowsCompression = 'false'
for($try = 0; $try -lt 5; $try++)
{
  & C:/Windows/Temp/install.ps1
}


$Packages = 'googlechrome', 'git', 'kubernetes-cli', 'sql-server-management-studio', 'k9s', 'vscode', 'python311', 'sqlite'
ForEach ($PackageName in $Packages)
    {
        choco install $PackageName -y
    }
