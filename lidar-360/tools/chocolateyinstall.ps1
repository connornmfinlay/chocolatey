$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'GreenValley SuiteV7.0_20231104.exe'

$packageArgs = @{
  packageName   = 'LiDAR360'
  fileType      = 'EXE'
  file         = $fileLocation
  softwareName  = 'LiDAR-360'
  checksum      = 'D6CAFCEF66D7F783C114881B647187C9'
  silentArgs    = "/S /qn /norestart /l*v"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs # https://docs.chocolatey.org/en-us/create/functions/install-chocolateypackage
