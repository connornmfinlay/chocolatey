$ErrorActionPreference = 'Stop' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'gpei-12.0.004-install-winserv.exe'

# Reading license key in
$gemFilePath = Join-Path $toolsDir 'LicMarch23.gem'
$licenseKey = Get-Content -Path $gemFilePath -Raw

$packageArgs = @{
  packageName   = 'Gempack'
  fileType      = 'EXE' 
  file         = $fileLocation
  softwareName  = 'Gempack' 
  checksum      = '6E599EC38E540BE4C2593DE9B3E16EDCCCC65B388787FFC513B66BF2703F86E5'
  silentArgs    = "/VERYSILENT /licfile=$gemFilePath" 
  checksumType  = 'sha256' 
  ValidExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
