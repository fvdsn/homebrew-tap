class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.2/jig_v2.5.2_darwin_arm64.tar.gz"
      sha256 "49f89ee69f6a414caca7387b5d2be96fea176cc638478948ee00b3a77231628e"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.2/jig_v2.5.2_darwin_amd64.tar.gz"
      sha256 "0ce589780cad6ae5313b6d5dad1af76cd67245e24aa16a5cc0f4df72bfb91f17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.2/jig_v2.5.2_linux_arm64.tar.gz"
      sha256 "9dbf06f0d0a251d4ff9734ca3003c2e0d6053982c5496d8835e7a995d58d164e"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.2/jig_v2.5.2_linux_amd64.tar.gz"
      sha256 "83b0c78e6cc3522c44ed8dfad60fa16f3544719592b25ef38b023ef21cc55beb"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.5.2", shell_output("#{bin}/jig --version")
  end
end
