class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.1/jig_v2.1.1_darwin_arm64.tar.gz"
      sha256 "e46e2bacc6c2aa9f6f5c18b6b04598ad45e086ff325d0d5ce2d10b163c5aa20b"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.1/jig_v2.1.1_darwin_amd64.tar.gz"
      sha256 "03418901e9dce8cd1506fa5b6b6a38dd9b50294b04ac18eb6010bebdba471dd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.1/jig_v2.1.1_linux_arm64.tar.gz"
      sha256 "7021dd63a2853280ab746eb2003d3452bac92faed5f9897d9c2604cc4d30e84c"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.1/jig_v2.1.1_linux_amd64.tar.gz"
      sha256 "716e364afc7636de15f88fa3c7cc4034cccac32bd91f54369e1e694ab49451e7"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.1.1", shell_output("#{bin}/jig --version")
  end
end
