cask "magi" do
  version "0.2.2"
  sha256 "2d0ea7d8f062b9a574e17bd2f02983978178877efe2e445be370fa0119ca5ab7"

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
