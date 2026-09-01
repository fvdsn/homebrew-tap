class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.0/jig_v2.1.0_darwin_arm64.tar.gz"
      sha256 "8cfb064a330c8d53d28a45e0c6d63d8833bb6cced3cddc77b58fe821fcb5bffc"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.0/jig_v2.1.0_darwin_amd64.tar.gz"
      sha256 "e6387ac88ccf1d0ce03ebc7bc14c92b78e1df0faa29b2e08ec403fb9f856fd03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.0/jig_v2.1.0_linux_arm64.tar.gz"
      sha256 "94ae5edc8a66c70cbfff44f684f3d45fbface55d8e659085c41acadf9e0b5433"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.0/jig_v2.1.0_linux_amd64.tar.gz"
      sha256 "5876d381b03ecaa8682586a939737a7d6091888198850d19d1c15c434e91a1a9"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.1.0", shell_output("#{bin}/jig --version")
  end
end
