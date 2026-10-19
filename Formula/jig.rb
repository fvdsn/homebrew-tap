class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v3.0.0/jig_v3.0.0_darwin_arm64.tar.gz"
      sha256 "80c9e5cb81cd1f2dc930b8b8a5e9b7f2263066eab0ba5cb5c40c5cdffb8bbe14"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v3.0.0/jig_v3.0.0_darwin_amd64.tar.gz"
      sha256 "b64a67895988285ec5b4b7a9e51f675e6e4963512c392614e3263fa17a968a56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v3.0.0/jig_v3.0.0_linux_arm64.tar.gz"
      sha256 "b46ace0af8dbc31ed34fdda28309562035ae666384578f3ec0541b935f02dc2d"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v3.0.0/jig_v3.0.0_linux_amd64.tar.gz"
      sha256 "e516d588bfa329b86e4ba946ef35472ec47d86967b04753158a0d58c9c8f5885"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v3.0.0", shell_output("#{bin}/jig --version")
  end
end
