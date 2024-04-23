$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'EUROMOD_installer_64bit_v3.6.8.exe'

$packageArgs = @{
  packageName   = 'Euromod'
  fileType      = 'EXE' 
  file         = $fileLocation
  softwareName  = 'EUROMOD' 
  checksum      = '1C7EAC31CE9B69E26D952823DD4485A2CC672083561F090B5E40172DE1234007'
  checksumType  = 'sha256'
  silentArgs    = "/S /v/qn"
  validExitCodes= @(0, 3010, 1641)
 }
 Install-ChocolateyPackage @packageArgs

