Write-Host  -ForegroundColor Yellow "Starting Brooks' Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win11 23H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "2: I'll select it myself"-ForegroundColor Yellow
Write-Host "3: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

# Get the computer system information
$computerSystem = Get-WmiObject -Class Win32_ComputerSystem

# Extract the model from the computer system information
$model = $computerSystem.Model

# Display the model
Write-Host "The model of this PC is: $model"


Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSBuild 23H2 -OSEdition Pro -ZTI } 
    '3' { Start-OSDCloud	} 
    '4' { Exit		}
}

wpeutil reboot
