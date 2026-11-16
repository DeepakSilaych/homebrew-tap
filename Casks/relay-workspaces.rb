cask "relay-workspaces" do
  version "0.4.0"
  sha256 "cde5e69de507f858ffab344b1c63ec47257f263a4d56eacd723db5490a500567"

  url "https://github.com/DeepakSilaych/relay/releases/download/v#{version}/Relay-#{version}-arm64.dmg"
  name "Relay"
  desc "Multi-repository terminal workspaces for coding agents"
  homepage "https://github.com/DeepakSilaych/relay"

  depends_on arch: :arm64
  depends_on formula: ["dtach", "gh", "git", "python@3.14"]
  depends_on macos: :monterey

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Resources/relay/backend/relay.py", target: "relay"

  caveats <<~EOS
    Relay is ad-hoc signed and not notarized by Apple.
    After the first launch attempt, macOS may require approval in
    System Settings > Privacy & Security.

    Your workspaces are preserved when updating or uninstalling. Terminals started
    by Relay 0.3.x under tmux stay attachable until they end; new terminals use dtach.
    Remote hosts need dtach installed (apt install dtach).
  EOS
end
