$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'NVivo.x64.exe'

$packageArgs = @{
  packageName   = 'NVivo'
  fileType      = 'EXE'
  file         = $fileLocation
  softwareName  = 'NVivo.x64'
  checksum      = '35E23C803F46EF22356E35B3ADEBF57DA5FFB2A6E853B5C067E41DC133A06665'
  checksumType  = 'sha256' 
  silentArgs    = "/S /v/qn"  
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs 
