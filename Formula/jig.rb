class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.0/jig_v4.8.0_darwin_arm64.tar.gz"
      sha256 "a6e5ac85724086946f12e36c94b37f68650a54236eee6c2a9a15b43e315e2bfd"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.0/jig_v4.8.0_darwin_amd64.tar.gz"
      sha256 "985f904ebaa19714759cbdf6852d20f932c09740d907ddc91623abc42db31104"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.0/jig_v4.8.0_linux_arm64.tar.gz"
      sha256 "5581542dcab120fa2eecde2d605f9e675d17b85c1452394f8f75f6856f398ae8"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.0/jig_v4.8.0_linux_amd64.tar.gz"
      sha256 "78308db467f2208505596556f27c14d68a4959d5372052e168fba04b4985c053"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.8.0", shell_output("#{bin}/jig --version")
  end
end
