# Chocolatey package

Source for the [`beam-mod-manager`](https://community.chocolatey.org/packages/beam-mod-manager)
package on the Chocolatey Community Repository.

The package downloads the signed installer from this repo's GitHub Releases and checks its SHA-256
before installing (the same hashes are published at https://beammodmanager.com/security). It
contains no app binaries.

```powershell
choco install beam-mod-manager
```
