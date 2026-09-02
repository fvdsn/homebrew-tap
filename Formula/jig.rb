class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.1/jig_v2.4.1_darwin_arm64.tar.gz"
      sha256 "6488c2659cfb6e0ddedc066dd262758e5f33ca12af64634b3cade5998ed0fd0e"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.1/jig_v2.4.1_darwin_amd64.tar.gz"
      sha256 "078565b5843fc9bca896c1235ce06a7f356a3f7e556ac47bc07672d4a18ac5be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.1/jig_v2.4.1_linux_arm64.tar.gz"
      sha256 "aaf58f148d5f77d813872c04b71fa6b124f5f3916e0d723aeb88031f047b48f0"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.4.1/jig_v2.4.1_linux_amd64.tar.gz"
      sha256 "06b1dc1f2b7f7d3641bdbde9482d1a9f7625d6f72fa3833afa35f3e95dcb5c3e"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.4.1", shell_output("#{bin}/jig --version")
  end
end
