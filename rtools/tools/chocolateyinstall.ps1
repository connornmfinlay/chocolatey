$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'rtools43-5958-5975.exe'

$packageArgs = @{
  packageName   = 'RTools'
  fileType      = 'EXE' #only one of these: exe, msi, msu
  file         = $fileLocation
  softwareName  = 'RTools'
  checksum      = 'BC25C0C8CE9716F7D13B31C255D19C21104C6B5AE18B374CE71AD50FCEE05584'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  silentArgs    = "/VERYSILENT" 
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
