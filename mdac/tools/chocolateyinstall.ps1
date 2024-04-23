$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'mdac28sdk.msi'

$packageArgs = @{
  packageName   = 'mdac'
  fileType      = 'MSI' 
  file         = $fileLocation
  softwareName  = 'MDAC' 
  checksum = '568C596B19C518AC9CBF085802EE5B1439D099A2D451F85ED8593B8E4318EF43'
  checksumType = 'sha256'
  silentArgs    = "/quiet" 
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs 
