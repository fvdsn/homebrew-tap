class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.0/jig_v2.4.0_darwin_arm64.tar.gz"
      sha256 "9645a5eee1db7db221c4879ce435eee3812db6e14229a6d69a4d6df5fbd3bdc6"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.0/jig_v2.4.0_darwin_amd64.tar.gz"
      sha256 "3c2a1340cfc3eb0efc8822b085f232a9fc2295d422fb6be232c4a0c732c2c97f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.0/jig_v2.4.0_linux_arm64.tar.gz"
      sha256 "b05e1031a8674aa4aa45886f3fffcaba4632560224306ba074aa52d4b3068007"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.0/jig_v2.4.0_linux_amd64.tar.gz"
      sha256 "2fdd6467e7c69ff4279f413d64599afacb0912682aaaff177aab37afdb0295ec"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.4.0", shell_output("#{bin}/jig --version")
  end
end
