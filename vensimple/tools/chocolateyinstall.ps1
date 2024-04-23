$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$fileLocation = Join-Path $toolsDir 'VensimPLEx64Setup.exe'
$fileLocation = Join-Path $toolsDir 'VensimPLEx64Setup1.exe'

$packageArgs = @{
  packageName   = 'VensimPLE'
  fileType      = 'EXE'
  file         = $fileLocation
  softwareName  = 'VensimPLE' 
  #checksum      = '154C510361329FB8373E17D82210DD88D0046FCBCFC20A458D207D780A6D2C23'
  checksum      = 'C1C968E63EEE06DE1648AFB3030CE03D0BCFBBE27B07F7BCED54CE08B329DB3D'
  checksumType  = 'sha256' 
  silentArgs    = "/S /v/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0)
}
Install-ChocolateyPackage @packageArgs 
