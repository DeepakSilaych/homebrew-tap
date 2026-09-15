cask "relay" do
  version "0.3.1"
  sha256 "f296a8d99ef9c5d4156a053d688dd094baefd4165ea9b30dd2e628a16224d898"

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
