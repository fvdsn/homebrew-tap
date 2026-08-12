class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.3/jig_v2.0.3_darwin_arm64.tar.gz"
      sha256 "4bb7ecbc5a8ca279188c7718b2ee0513e66ed0d49e55f7a2a950c058aa81ed32"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.3/jig_v2.0.3_darwin_amd64.tar.gz"
      sha256 "2818a274a302de21ed3e9e33dd2760e15c15e54a4a1fb863fab4a392a516d1e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.3/jig_v2.0.3_linux_arm64.tar.gz"
      sha256 "d52f4e1c1d09546e4e92d521550f1693d5f6f7b77fce83c10223481f696169e8"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.3/jig_v2.0.3_linux_amd64.tar.gz"
      sha256 "f9adde23bb8574f17e52c45ca0b5b7c42642e39de879e406d68abf9a352e7ea8"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.3", shell_output("#{bin}/jig --version")
  end
end
