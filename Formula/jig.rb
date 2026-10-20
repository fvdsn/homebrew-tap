class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.5.0/jig_v4.5.0_darwin_arm64.tar.gz"
      sha256 "11e85395fee0193b97a94dabd2451abdab9817cc2e77d0e4c0a32e317119ce70"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.5.0/jig_v4.5.0_darwin_amd64.tar.gz"
      sha256 "0b27b2d975afdfb0ac80badf66d1a491dce259f2093b97c86041f6d252ceb4b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.5.0/jig_v4.5.0_linux_arm64.tar.gz"
      sha256 "b1eb4f122b2457e7c94eed8fde4c089fd93cf4262d8bfe32a8bb912f2a2fc379"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.5.0/jig_v4.5.0_linux_amd64.tar.gz"
      sha256 "a355a337d444044e5a8ac4eb7ec6cc39c05e22311e971d9e15cff1e547be7df2"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.5.0", shell_output("#{bin}/jig --version")
  end
end
