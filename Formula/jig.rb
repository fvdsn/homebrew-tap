class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.1.0/jig_v4.1.0_darwin_arm64.tar.gz"
      sha256 "900bfb673a7e9aa71c6a48cae96303ebeee2e6512518aee1f2c7174243960e76"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.1.0/jig_v4.1.0_darwin_amd64.tar.gz"
      sha256 "114aebc9e4ca69ffc6bb46d9a68bb8719f511ab8288241b35d6bd5069ef59395"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.1.0/jig_v4.1.0_linux_arm64.tar.gz"
      sha256 "0553e9f2ac219b3ee9090ff8be9eecf04695536a42ed6986655a3ac9205cc049"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.1.0/jig_v4.1.0_linux_amd64.tar.gz"
      sha256 "c6332049198a1b2566c2217275645cdaeb604c6db8f91af8dacaec9d0dce868b"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.1.0", shell_output("#{bin}/jig --version")
  end
end
