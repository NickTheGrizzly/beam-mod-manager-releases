$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/NickTheGrizzly/beam-mod-manager-releases/releases/download/v0.9.8/Beam-Mod-Manager-0.9.8-Setup.exe'
  checksum64     = 'f77623484b9ce821cc7502719001a7f11098eaef6d442f83d35dbb726cb5f230'
  checksumType64 = 'sha256'
  silentArgs     = '/S /allusers'
  validExitCodes = @(0)
  softwareName   = 'Beam Mod Manager*'
}

Install-ChocolateyPackage @packageArgs
