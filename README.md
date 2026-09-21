# homebrew-netpulse

Homebrew tap for [NetPulse](https://github.com/tonmoy-y/NetPulse), a
lightweight, privacy-first network speed monitor for the macOS menu bar.

## Install

```bash
brew tap tonmoy-y/netpulse
brew install --cask netpulse
```

or in one line:

```bash
brew install --cask tonmoy-y/netpulse/netpulse
```

The cask downloads the signed release DMG from
[tonmoy-y/NetPulse releases](https://github.com/tonmoy-y/NetPulse/releases)
and clears the Gatekeeper quarantine flag automatically (NetPulse is
ad-hoc signed, not notarized with a paid Apple Developer ID — this is the
Homebrew-standard equivalent of the one-time right-click → Open step).

## Updating the cask for a new release

1. Tag and push a new version in the main repo (see its README's
   "Publishing a release" section) — this builds and attaches a new `.dmg`.
2. `shasum -a 256 NetPulse-<version>.dmg` on the new asset.
3. Bump `version` and `sha256` in `Casks/netpulse.rb` here, commit, push.

## License

MIT — © 2026 Tonmoy Sarker Sourav
