class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.2.0/jig_v4.2.0_darwin_arm64.tar.gz"
      sha256 "866b70aa37d824dd8bb332a0a005054307e09cb826c82271152ac47eda7e58e6"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.2.0/jig_v4.2.0_darwin_amd64.tar.gz"
      sha256 "8ca2961412b093874e989b8ae4a8ae0be01abef1e4338efd25a573135ad95706"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.2.0/jig_v4.2.0_linux_arm64.tar.gz"
      sha256 "4c868603e8150ec7c08bd52c800fd6b0ccb7e9bd443f71f565676ae8267b822f"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.2.0/jig_v4.2.0_linux_amd64.tar.gz"
      sha256 "63c8382c5049979ff65f969cafdc952c84bf14082c0881e8864fae8d0221dd9a"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.2.0", shell_output("#{bin}/jig --version")
  end
end
