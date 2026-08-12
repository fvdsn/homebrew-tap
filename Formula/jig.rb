class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.1/jig_v2.0.1_darwin_arm64.tar.gz"
      sha256 "3ff334ceb47beb645b0908d074f0850b8bb38221965cdd4b7a12ccd29a8995d2"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.1/jig_v2.0.1_darwin_amd64.tar.gz"
      sha256 "1a4f956905f383842d648cad2b56ed4a638386b5fc775dabe8560edff9bec30e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.1/jig_v2.0.1_linux_arm64.tar.gz"
      sha256 "d9a76c61530473eb91927795654f7ef14b27f2c793a6153515734d84680a58c4"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.1/jig_v2.0.1_linux_amd64.tar.gz"
      sha256 "338c994a145d5407344ff2d7a560bdfdcca82816973d98da3c32e4de52aa8f8a"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.1", shell_output("#{bin}/jig --version")
  end
end
