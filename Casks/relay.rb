cask "relay" do
  version "0.3.2"
  sha256 "97a6b2ea8b822f0d94f9703e16ef8d704d54a027cd4af144212549d23b087562"

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
