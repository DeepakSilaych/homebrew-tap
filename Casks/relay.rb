cask "relay" do
  version "0.2.9"
  sha256 "b429070bcee8b5d033c78d4872f47045dcf80b2c3a121ac8b773c732ac4c997d"

  url "https://github.com/DeepakSilaych/relay/releases/download/v#{version}/Relay-#{version}-arm64.dmg"
  name "Relay"
  desc "Multi-repository terminal workspaces for coding agents"
  homepage "https://github.com/DeepakSilaych/relay"

  depends_on arch: :arm64
  depends_on formula: ["gh", "git", "python@3.14", "tmux"]
  depends_on macos: :monterey

  app "Relay.app"

  caveats <<~EOS
    Relay is ad-hoc signed and not notarized by Apple.
    After the first launch attempt, macOS may require approval in
    System Settings > Privacy & Security.

    Your workspaces and sess sessions are preserved when updating or uninstalling.
  EOS
end
