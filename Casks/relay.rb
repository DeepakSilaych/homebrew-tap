cask "relay" do
  version "0.3.0"
  sha256 "2f21dc2a920437858c110c24d352a8dc12315c7c7b9c3c1c4abe1856490fbb43"

  url "https://github.com/DeepakSilaych/relay/releases/download/v#{version}/Relay-#{version}-arm64.dmg"
  name "Relay"
  desc "Multi-repository terminal workspaces for coding agents"
  homepage "https://github.com/DeepakSilaych/relay"

  depends_on arch: :arm64
  depends_on formula: ["gh", "git", "python@3.14", "tmux"]
  depends_on macos: :monterey

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Resources/relay/backend/relay.py", target: "relay"

  caveats <<~EOS
    Relay is ad-hoc signed and not notarized by Apple.
    After the first launch attempt, macOS may require approval in
    System Settings > Privacy & Security.

    Your workspaces and sess sessions are preserved when updating or uninstalling.
  EOS
end
