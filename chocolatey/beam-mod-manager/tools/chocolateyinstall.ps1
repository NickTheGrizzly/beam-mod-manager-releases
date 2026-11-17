$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/NickTheGrizzly/beam-mod-manager-releases/releases/download/v0.9.7/Beam-Mod-Manager-0.9.7-Setup.exe'
  checksum64     = '361378a6e5ee32f2f6365582008b1f78c4c2de6f02229dad528f7a23d4220f30'
  checksumType64 = 'sha256'
  silentArgs     = '/S /allusers'
  validExitCodes = @(0)
  softwareName   = 'Beam Mod Manager*'
}

Install-ChocolateyPackage @packageArgs
