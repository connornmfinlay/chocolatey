$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'MicroDicom-2024.1-x64.exe'

$packageArgs = @{
  packageName   = 'MicroDicom'
  fileType      = 'EXE'
  file          = $fileLocation
  softwareName  = 'MicroDicom'
  checksum      = '9BD4C6B41D78FD4EB75B5E75A5403ADE8FD12F53E93B747D9BEBAD97B4E780DB' #x64
  checksumType  = 'sha256' 
  silentArgs    = "/S /v/qn"  
  validExitCodes= @(0, 3010, 1641)
  #ia64          = $true
  #ia32          = $true
}
Install-ChocolateyPackage @packageArgs
