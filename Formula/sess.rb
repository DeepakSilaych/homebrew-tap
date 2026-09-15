class Sess < Formula
  desc "Persistent SSH terminals powered by zmx"
  homepage "https://deepaksilaych.github.io/sess/"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.7.0/sess-darwin-arm64.tar.gz"
      sha256 "95709fb61da9e9f895ec19f0ba03077ba90487a478631137fe0562bd969e17d7"
    end
    on_intel do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.7.0/sess-darwin-amd64.tar.gz"
      sha256 "632182ff12e1a59270af0d3ff689c2e26778efd836c63f96b1817953fa2b52e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.7.0/sess-linux-arm64.tar.gz"
      sha256 "760a90430fc0bd22edc5dc3d0435722155db0e7bf58fe5a82546bfd19e769b4f"
    end
    on_intel do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.7.0/sess-linux-amd64.tar.gz"
      sha256 "a5bbf071087c422a508705ccec802e5436af179853b499c5a1d7ccbf6903be3e"
    end
  end

  def install
    bin.install "sess"
    doc.install "docs", "README.md", "CHANGELOG.md"
    generate_completions_from_executable(bin/"sess", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sess version")
    assert_match "attach", shell_output("#{bin}/sess --help")
  end
end
