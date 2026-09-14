cask "magi" do
  version "0.2.5"
  sha256 "b55d563c2d0c44b3a38367e34c0119f767eee25cabe9235fd95bbde607671317"

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
