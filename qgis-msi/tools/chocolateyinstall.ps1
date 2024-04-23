$packageArgs = @{
  packageName = 'QGIS-OSGeo4W'
  fileType      = 'MSI'
  url           = 'https://qgis.org/downloads/QGIS-OSGeo4W-3.32.3-1.msi' # download url, HTTPS preferred
  checksum      = '5C0416FF714E49CEEE7AF6FD23A5B7C0244959AFB6BEBD617516C12D795A9DE8'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  silentArgs    = "/s /qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs


