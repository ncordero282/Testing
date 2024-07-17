Write-Host  -ForegroundColor Yellow "Starting Brooks' Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win11 23H2 | English | Pro" -ForegroundColor Yellow
Write-Host "2: I'll select it myself" -ForegroundColor Yellow
Write-Host "3: Exit" -ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSBuild 23H2 -OSEdition Pro -ZTI } 
    '2' { Start-OSDCloud } 
    '3' { Exit }
}

Write-Host "Press any key to reboot..."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
wpeutil reboot

