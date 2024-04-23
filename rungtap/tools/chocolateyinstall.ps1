$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'setup.exe'

$packageArgs = @{
  packageName   = 'runGTAP'
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  file         = $fileLocation
  softwareName  = 'rungtap' 
  checksum      = 'A4ED4429E8A1FAAF98F62958B722602265AD38DFDB902E5CB07197050D9C3646'
  checksumType  = 'sha256' 

  silentArgs    = "/VERYSILENT"
  validExitCodes= @(0)
}
Install-ChocolateyPackage @packageArgs
