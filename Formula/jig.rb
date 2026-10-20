class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.0/jig_v4.3.0_darwin_arm64.tar.gz"
      sha256 "9a072eabc9a8d0cbc6e5be967e0c59265ab2133caa25487779dc3dc466207190"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.0/jig_v4.3.0_darwin_amd64.tar.gz"
      sha256 "f9fef899d2bb3447d4f072b64f878c637d1497a0f83a62d48f858a21e92863bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.0/jig_v4.3.0_linux_arm64.tar.gz"
      sha256 "bb9f1f869f3f943511e61b8c53471ab3dbed6d9021b1f3b112c763aee9a7c508"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.0/jig_v4.3.0_linux_amd64.tar.gz"
      sha256 "b7e2cac1b8549f8a43d66f685d712c4f558b1edad08db1ed7863a06dd1d21288"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.3.0", shell_output("#{bin}/jig --version")
  end
end
