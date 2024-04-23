$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'jamovi-2.2.5.0-win64.exe'

$packageArgs = @{
  packageName   = 'jamovi'
  fileType      = 'EXE' 
  file         = $fileLocation
  softwareName  = 'jamovi' 
  checksum      = '4EF1B091F41D8F63803B74717017EEC3431CC845ABAB62A4F23C19A0D41307A7'
  checksumType  = 'sha256' 
  silentArgs    = "/S /v/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0)
}
Install-ChocolateyPackage @packageArgs
