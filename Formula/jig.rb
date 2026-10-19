class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.6.0/jig_v2.6.0_darwin_arm64.tar.gz"
      sha256 "1ae443f1bab1b1cdb0bd5cec55d3550b4059d12d383dd94c7c7ffe14cfb7ab47"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.6.0/jig_v2.6.0_darwin_amd64.tar.gz"
      sha256 "b805c57523fb639677470fd7673b8ea4718d209f6fb3728f7a8a9632564b648b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.6.0/jig_v2.6.0_linux_arm64.tar.gz"
      sha256 "202830c844187bfc8d336db3d5088bc6daf0e3b8c259e8c4a92f50f282eb0dc4"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.6.0/jig_v2.6.0_linux_amd64.tar.gz"
      sha256 "5e15f3c53a304856ac1e1a43c6980cd7fdde707b23cc98c76a0a1c8a9d407401"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.6.0", shell_output("#{bin}/jig --version")
  end
end
