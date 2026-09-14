cask "magi" do
  version "0.2.1"
  sha256 "414ed0cdb5e56f4f67c15a44ff5309f5677efa783d8f841ef094d8fa24603ef2"

  url "https://github.com/DeepakSilaych/orca/releases/download/v#{version}/Magi-#{version}-arm64.dmg"
  name "Magi"
  desc "Multi-repository terminal workspaces for coding agents"
  homepage "https://github.com/DeepakSilaych/orca"

  depends_on arch: :arm64
  depends_on formula: ["gh", "git", "python@3.14", "tmux"]
  depends_on macos: :monterey

  app "Magi.app"

  caveats <<~EOS
    Magi is ad-hoc signed and not notarized by Apple.
    After the first launch attempt, macOS may require approval in
    System Settings > Privacy & Security.

    Your workspaces and sess sessions are preserved when updating or uninstalling.
  EOS
end
