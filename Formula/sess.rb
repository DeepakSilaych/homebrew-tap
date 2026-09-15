class Sess < Formula
  desc "Persistent SSH terminals powered by zmx"
  homepage "https://deepaksilaych.github.io/sess/"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.6.0/sess-darwin-arm64.tar.gz"
      sha256 "f0e92cea5714ce207cbc4bf4b148d563eaf85387743b3fb300715b66d496a91e"
    end
    on_intel do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.6.0/sess-darwin-amd64.tar.gz"
      sha256 "ee0b735826e26f8a05ecca656168b4ac528f16202b40fd0e60ad9544f3edf2c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.6.0/sess-linux-arm64.tar.gz"
      sha256 "da6bc68f08035c4d01a2c575848fcb42132c67f6f868e134a76a6888f5158b00"
    end
    on_intel do
      url "https://github.com/DeepakSilaych/sess/releases/download/v0.6.0/sess-linux-amd64.tar.gz"
      sha256 "b2ed459e669b0baaa862827cd0d6d5d7d0ea33da1a3ae08364a2ad3807b6ca03"
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
