# BeamNG Mod Manager — Releases

**BeamNG Mod Manager (BMM)** is a Windows desktop app for organizing your BeamNG.drive and BeamMP
mod collection outside the game — a single library ("Mod Storage") you activate mods from into the
game, instead of letting your mods folder sprawl. Learn more, or grab the latest build, at
**[beammodmanager.xyz](https://beammodmanager.xyz)**.

This repository publishes BMM's **official release artifacts only** — installers, checksums, and
verification information. It contains no application source code.

## Official downloads

There are exactly two official sources for BMM installers:

- **[beammodmanager.xyz](https://beammodmanager.xyz)** — the website
- **This repository's [Releases](../../releases)** page

Anywhere else offering a BMM download — a third-party mirror, a forum attachment, a mod-piracy
site — is unofficial and not something we can vouch for. If in doubt, download from one of the two
sources above and verify the hash yourself using the steps below.

## Verify your download

Every release includes a `SHA256SUMS.txt` listing the SHA-256 hash of each installer. To verify
the file you downloaded matches what we published:

```powershell
Get-FileHash .\BeamNG-Mod-Manager-<version>-Setup.exe -Algorithm SHA256
```

Compare the resulting hash against the matching line in that release's `SHA256SUMS.txt`, and
against the value published on **[beammodmanager.xyz/security](https://beammodmanager.xyz/security)**.
If they don't match exactly, don't run the installer — re-download from an official source above
and verify again.

Each release also links a **VirusTotal** analysis for every artifact. That link is a supporting
signal — it shows how a broad set of antivirus engines currently scores the exact file we
published — not a guarantee of safety. Always verify the SHA-256 hash first; VirusTotal is a
second, independent check on top of that, not a replacement for it.

## A note on code signing

Current releases are **not yet code-signed**. Windows SmartScreen may show an "unknown publisher"
warning when you run the installer — this is expected for an unsigned build, not a sign that
anything is wrong with it. Verify the SHA-256 hash above instead of relying on the signing prompt.

Code signing under the publisher name **NickTheGrizzly** is in progress. Once it lands, releases
will show that publisher name in the Windows install prompt, and SmartScreen warnings will taper
off over time as that publisher identity accrues reputation — signing starts that process, it does
not clear the warning instantly. We'll say so plainly in the release notes for the first signed
build.

## Reporting a security issue

See [SECURITY.md](SECURITY.md).
