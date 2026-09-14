cask "magi" do
  version "0.2.7"
  sha256 "6fd3d01e59aac91096a281d15cdc309ad0c48b02a1dbd0fe31ac6a1812aa486a"

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
