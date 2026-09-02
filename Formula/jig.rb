class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.2/jig_v2.1.2_darwin_arm64.tar.gz"
      sha256 "77430c6af3c2d8b71c9ebea834aeab0f88613215e8dfe57527c2837298a432c7"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.2/jig_v2.1.2_darwin_amd64.tar.gz"
      sha256 "0770bf86adedc7417432285e79303ebae091068040626b9d7c89d6c7efe97bb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.2/jig_v2.1.2_linux_arm64.tar.gz"
      sha256 "8d02e0aae69357098ef2c97f1eedce3cbfad2e6826b46e56f56887f8c1b1fd2e"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.1.2/jig_v2.1.2_linux_amd64.tar.gz"
      sha256 "dcd04815a0b1517613352e1d181b3e5ca9476bc798f97511029d8ebc9b893358"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.1.2", shell_output("#{bin}/jig --version")
  end
end
