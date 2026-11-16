$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/NickTheGrizzly/beam-mod-manager-releases/releases/download/v0.9.6/Beam-Mod-Manager-0.9.6-Setup.exe'
  checksum64     = '604ce310429ca17dafa162776b71780308b8707c247ebf701e4e99ff6d37f536'
  checksumType64 = 'sha256'
  silentArgs     = '/S /allusers'
  validExitCodes = @(0)
  softwareName   = 'Beam Mod Manager*'
}

Install-ChocolateyPackage @packageArgs
