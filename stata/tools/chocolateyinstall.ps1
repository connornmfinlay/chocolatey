$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'SetupStata18.exe'

$packageArgs = @{
  packageName   = 'Stata'
  fileType      = 'EXE' #only one of these: exe, msi, msu
  file         = $fileLocation
  softwareName  = 'stata18' 
  checksum      = '4D4E451932413A26130E6F77AFA60A17B0B5D7493EB1BE0BA6E7914C47B9D457'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  silentArgs    = '/S /s /v"/qn ADDLOCAL=core,StataMP64,StataSE64,StataBE64"'
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
