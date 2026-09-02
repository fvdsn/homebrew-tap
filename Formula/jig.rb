class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.3.0/jig_v2.3.0_darwin_arm64.tar.gz"
      sha256 "2367eab01e582f54ceff8b548ee640967cb948ee51223894d14149936b57af84"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.3.0/jig_v2.3.0_darwin_amd64.tar.gz"
      sha256 "9a757883c4282cb3aee4d5120ef2c192eff410fa207cfa0c8156a04fa37281cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.3.0/jig_v2.3.0_linux_arm64.tar.gz"
      sha256 "de36a414563da8f4dbd5acaa543bd42e939687fe90dac99d601fa6e05930bfb4"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.3.0/jig_v2.3.0_linux_amd64.tar.gz"
      sha256 "6b2e602adf32e2d2790f9b065570dbad555193e244acbf3efa866f26d15cc302"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.3.0", shell_output("#{bin}/jig --version")
  end
end
