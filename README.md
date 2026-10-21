# Beam Mod Manager — Releases

**Beam Mod Manager (BMM)** is a free Windows mod manager for **BeamNG.drive®** and **BeamMP**. Keep
every mod in one library outside the game, switch between mod load-outs in one click, join BeamMP
servers without a cluttered mods folder, find duplicates and conflicts, and reclaim disk space.

**Website, features and the latest download: [beammodmanager.com](https://beammodmanager.com)**

This repository publishes BMM's **official release artifacts only**: installers, checksums and
verification information. It contains no application source code.

> BeamNG.drive® is a registered trademark of BeamNG GmbH. Beam Mod Manager is not affiliated with
> BeamNG GmbH.

## Official downloads

There are exactly two official sources for BMM installers:

- **[beammodmanager.com](https://beammodmanager.com)**: the website
- **This repository's [Releases](../../releases)** page

Anywhere else offering a BMM download (a third-party mirror, a forum attachment, a look-alike
GitHub repository, a mod-piracy site) is unofficial and not something we can vouch for. If in
doubt, download from one of the two sources above and verify the hash yourself using the steps
below.

## Verify your download

Every release includes a `SHA256SUMS.txt` listing the SHA-256 hash of each installer. To check
that the file you downloaded matches what we published:

```powershell
Get-FileHash .\Beam-Mod-Manager-<version>-Setup.exe -Algorithm SHA256
```

Compare the resulting hash against the matching line in that release's `SHA256SUMS.txt`, and
against the value published on **[beammodmanager.com/security](https://beammodmanager.com/security/)**.
If they don't match exactly, don't run the installer. Re-download it from an official source above
and verify again.

Each release also links a **VirusTotal** analysis for every artifact. That link is a supporting
signal: it shows how a broad set of antivirus engines currently scores the exact file we
published. It is not a guarantee of safety. Always verify the SHA-256 hash first; VirusTotal is a
second, independent check on top of that, not a replacement for it.

## Code signing

Since 0.8.47, releases are **digitally signed** by the developer (publisher name
**NickTheGrizzly**) with an identity-verified certificate issued by Microsoft. To inspect it:
right-click the installer → **Properties** → **Digital Signatures**.

Windows SmartScreen may still show a warning for a while. It fades as more people install signed
versions, so it won't vanish overnight. That warning is about reputation, not about the file being
altered. The SHA-256 check above is how you confirm the file is exactly what we published.

## Help, news and community

- Features, FAQ and guides: [beammodmanager.com](https://beammodmanager.com)
- Frequently asked questions: [beammodmanager.com/faq](https://beammodmanager.com/faq/)
- Changelog and devlog: [beammodmanager.com/blog](https://beammodmanager.com/blog/)
- Discord: [discord.gg/dR43TEaQ4f](https://discord.gg/dR43TEaQ4f)

## Reporting a security issue

See [SECURITY.md](SECURITY.md).
