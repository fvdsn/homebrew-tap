class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.10.0/jig_v1.10.0_darwin_arm64.tar.gz"
      sha256 "3a8ad2de64f6854eaf925f3aef62f8eb53ee6a5802e4486a04ab6a5e2af27b81"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.10.0/jig_v1.10.0_darwin_amd64.tar.gz"
      sha256 "f3767c81f1c9214e72bc55e8f652d39fe872bf34cbf4c71684697e271669f8b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.10.0/jig_v1.10.0_linux_arm64.tar.gz"
      sha256 "ad7d109b29011e281e2017cef34c549a50f9e0848563fdcf7c491ccfea348b1e"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.10.0/jig_v1.10.0_linux_amd64.tar.gz"
      sha256 "61f6f5430b1f3b8fc99734f51f7e5ec846cb2bf504cdf75e655c3b300644fbae"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v1.10.0", shell_output("#{bin}/jig --version")
  end
end
