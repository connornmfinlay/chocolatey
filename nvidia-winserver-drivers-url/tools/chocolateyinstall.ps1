$packageArgs =@{
  packageName = 'Nvidia DataCenter Drivers'
  fileType = 'EXE'
  silentArgs = '/S'
  url = 'https://us.download.nvidia.com/tesla/528.89/528.89-data-center-tesla-desktop-winserver-2016-2019-2022-dch-international.exe'
  checksumType = 'sha256'
  checksum = '3E04BA4C0B4975ED5F5302A3CEF0D333DBFDDBDB9995D83972DE879EEBD2EE80'
}
Install-ChocolateyPackage $packageArgs.packageName $packageArgs.fileType $packageArgs.silentArgs $packageArgs.url -CheckSum $packageArgs.checksum -ChecksumType $packageArgs.checksumType -validExitCodes @(0)
