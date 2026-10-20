class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.1/jig_v4.0.1_darwin_arm64.tar.gz"
      sha256 "5bbefe7b3b794b3e50b0828db2ae52ae2468ac119fa049ca4675f5e594ffbaa8"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.1/jig_v4.0.1_darwin_amd64.tar.gz"
      sha256 "f2dd18cf9d85013a8d182f6a4e4d6e3e87655cf80c7fee19776eb5cf90f894d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.1/jig_v4.0.1_linux_arm64.tar.gz"
      sha256 "fbfa82d85b7e31453a42663acbef297bc864507918f846f05062c586076bca5f"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.1/jig_v4.0.1_linux_amd64.tar.gz"
      sha256 "d9808a6f2368fdda7168b0b0831650c5aa1404563925bc60c9c0bfa53ac30ac2"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.0.1", shell_output("#{bin}/jig --version")
  end
end
