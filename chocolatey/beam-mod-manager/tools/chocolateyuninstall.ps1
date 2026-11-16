$ErrorActionPreference = 'Stop'

[array]$keys = Get-UninstallRegistryKey -SoftwareName 'Beam Mod Manager*'

if ($keys.Count -eq 1) {
  $key = $keys[0]
  $file = ($key.UninstallString -replace '"', '' -replace '\s/allusers.*$', '')
  Uninstall-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
    -SilentArgs '/allusers /S' -File $file -ValidExitCodes @(0)
} elseif ($keys.Count -eq 0) {
  Write-Warning "$($env:ChocolateyPackageName) has already been uninstalled by other means."
} else {
  Write-Warning "$($keys.Count) matches found; uninstall it from Apps & features to avoid removing the wrong program."
  $keys | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
