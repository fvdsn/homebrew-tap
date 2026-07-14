class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "1.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.1/jig_v1.8.1_darwin_arm64.tar.gz"
      sha256 "452431d6f39795acb89001164dd828644ba42130fbd30557bcea2a916d19e144"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.1/jig_v1.8.1_darwin_amd64.tar.gz"
      sha256 "35c4d01a2e6442355be97455e0b48b6da22e5f3805ae0e1cdf669879f60d581f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.1/jig_v1.8.1_linux_arm64.tar.gz"
      sha256 "b4658c4afd576fbf0805da7640632922811baf6cf4bca470f6097c20d3ca1a91"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.1/jig_v1.8.1_linux_amd64.tar.gz"
      sha256 "2f9418e00d12db3a069686b53ebf79545b50addf17eb5d0d39cde4ca84e13d44"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v1.8.1", shell_output("#{bin}/jig --version")
  end
end
