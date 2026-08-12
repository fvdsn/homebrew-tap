class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.2/jig_v2.0.2_darwin_arm64.tar.gz"
      sha256 "c929836b08f520d2570c3df92e82cffdae6a0af9e0720ac8362964377ec3c4f4"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.2/jig_v2.0.2_darwin_amd64.tar.gz"
      sha256 "78d4a85c31ec0879aab0ef8a0c098738e7be015fa4940e7de835c9c308431e8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.2/jig_v2.0.2_linux_arm64.tar.gz"
      sha256 "f799f2cd85bd3f099bc90463c6732b5d7ee6e661937bcd3f4216c899016b33e0"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.2/jig_v2.0.2_linux_amd64.tar.gz"
      sha256 "34998d256f9d0a6d82fd94ee7369ce5a21ea0e5db7ec1ccac23298a65ba27fc7"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.2", shell_output("#{bin}/jig --version")
  end
end
