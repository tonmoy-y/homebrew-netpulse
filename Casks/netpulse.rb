cask "netpulse" do
  version "1.0.0"
  sha256 "4fa16dc826fcb58147a67a0fd0d42598103a8337a9cb1b8c3ea43c74a39840a9"

  url "https://github.com/tonmoy-y/NetPulse/releases/download/v#{version}/NetPulse-#{version}.dmg"
  name "NetPulse"
  desc "Lightweight, privacy-first network speed monitor for the macOS menu bar"
  homepage "https://github.com/tonmoy-y/NetPulse"

  depends_on macos: ">= :ventura"

  app "NetPulse.app"

  postflight do
    # NetPulse is ad-hoc signed, not notarized with a paid Apple Developer
    # ID, so Gatekeeper would otherwise refuse to open it with no
    # explanation. Clearing the quarantine attribute here is equivalent to
    # the user doing Right-click → Open once, and is standard practice for
    # Homebrew casks distributing non-notarized, ad-hoc-signed apps.
    system_command "/usr/bin/xattr",
                    args: ["-dr", "com.apple.quarantine", "#{appdir}/NetPulse.app"],
                    sudo: false
  end

  zap trash: [
    "~/Library/Application Support/NetPulse",
    "~/Library/Preferences/com.tonmoysarkersourav.netpulse.plist",
  ]
end
