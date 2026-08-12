class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.0/jig_v2.0.0_darwin_arm64.tar.gz"
      sha256 "fe99f7c17fdd6cd92dc11bcf874095e398bae46a2df8662b7cd6eb2ab8e5da70"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.0/jig_v2.0.0_darwin_amd64.tar.gz"
      sha256 "657255fabe3b957e421002604faa93d3159fef0cab227b30e928c51ab66b14c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.0/jig_v2.0.0_linux_arm64.tar.gz"
      sha256 "79371ad3ae4cf361feebe43046929b83bef5600ff0e03a74ff804137b07dbe66"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.0/jig_v2.0.0_linux_amd64.tar.gz"
      sha256 "1d1eb9a2179f37a2edc6d4e41d65b690df0f73308c11bd9dff7094332d605b06"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.0", shell_output("#{bin}/jig --version")
  end
end
