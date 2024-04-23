$packageArgs =@{
  packageName = 'R.Studio'
  fileType = 'EXE'
  silentArgs = '/S'
  url = 'https://download1.rstudio.org/electron/windows/RStudio-2023.03.0-386.exe'
  checksumType = 'sha256'
  checksum = '885432dbeb3f9f2daadc28b95285f92cf35ab1bcfd977129d53903e02ff6e384'
}
Install-ChocolateyPackage $packageArgs.packageName $packageArgs.fileType $packageArgs.silentArgs $packageArgs.url -CheckSum $packageArgs.checksum -ChecksumType $packageArgs.checksumType -validExitCodes @(0)
