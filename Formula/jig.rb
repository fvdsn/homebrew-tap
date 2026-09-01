class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.8/jig_v2.0.8_darwin_arm64.tar.gz"
      sha256 "7991845e819adf29616ccb23c610a452ac3aedca140fd7521018ac8f752373e6"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.8/jig_v2.0.8_darwin_amd64.tar.gz"
      sha256 "f1caedee1f82777b4e56bccacf4e06ae6769b14535f39efd3d3b1bf7fff8dd1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.8/jig_v2.0.8_linux_arm64.tar.gz"
      sha256 "9b54c72a14ddd96be7915f03d6f415d4bc19ffb117211b4b2255ec983f815988"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.8/jig_v2.0.8_linux_amd64.tar.gz"
      sha256 "14a226fd027d6700b62df767d780937cd518b08d6b45dd83c514f52ee9fdc7c0"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.8", shell_output("#{bin}/jig --version")
  end
end
