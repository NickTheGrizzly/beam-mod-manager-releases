# Security Policy

## Scope

This policy covers:

- **The BeamNG Mod Manager (BMM) desktop app** — the Windows application published from this
  repository's Releases.
- **beammodmanager.xyz** — the marketing/download website.
- **The BMM licensing Worker** — the Cloudflare Worker that verifies Patreon-connected
  entitlements and related endpoints.

## Reporting a vulnerability

Email **security@beammodmanager.xyz** with details. Please include:

- **Version** — the BMM app version (or the website/Worker date/URL) affected.
- **Steps to reproduce** — as specific as you can make them.
- **Impact** — what an attacker could actually do with the issue (data exposure, code execution,
  privilege escalation, etc.).

Please don't open a public GitHub issue for a security report — email is the right channel so we
can assess and fix before details are public.

## What to expect

We'll acknowledge your report within a few business days. Confirmed issues are fixed in a regular
release rather than an emergency out-of-band patch, unless severity clearly warrants otherwise.
We'll let you know when a fix ships.

There is currently no bug bounty program — we can't offer monetary rewards for reports, but we do
appreciate responsible disclosure and will credit you in the release notes if you'd like.

## Out of scope

Issues in third-party mods, the BeamNG.drive game itself, or the BeamMP project are outside what
we can act on here — please report those to their respective maintainers.
