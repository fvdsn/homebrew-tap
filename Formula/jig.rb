class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.0/jig_v2.2.0_darwin_arm64.tar.gz"
      sha256 "09005fdda447b3710f118164b5eed48df426adc89af8a4997416cb25e3879f1d"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.0/jig_v2.2.0_darwin_amd64.tar.gz"
      sha256 "219cf9a746f54f9e9a3552937cf98ae1ea02cecf4ddf6c3510056fd60f1d29ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.0/jig_v2.2.0_linux_arm64.tar.gz"
      sha256 "2527fe61b3cf116f6ddf1123ad4d9087ebc504985ab5ca787dd856f06eef5a91"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.0/jig_v2.2.0_linux_amd64.tar.gz"
      sha256 "a23dc747329e0cd7a2f97a2dcc6285a4df0d5efeb1639726458399deaf846056"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.2.0", shell_output("#{bin}/jig --version")
  end
end
