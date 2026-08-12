class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.11.0/jig_v1.11.0_darwin_arm64.tar.gz"
      sha256 "d44884cf504c3e15df0b58dfb4a2803e3bca47aeabe93f738d9cbcfae147fcd9"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.11.0/jig_v1.11.0_darwin_amd64.tar.gz"
      sha256 "a7c23625e621d900b40992af98e064875058fa837477de6a8f04edc005441681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.11.0/jig_v1.11.0_linux_arm64.tar.gz"
      sha256 "1d20f3a61416d7b6cb936c104a21d241e1296e5b444dfbb6d891b2761d891b3e"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.11.0/jig_v1.11.0_linux_amd64.tar.gz"
      sha256 "b0982b7ca9b48de25e937089586c5fd66a5b18940e42a8880a6db229ed399b8f"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v1.11.0", shell_output("#{bin}/jig --version")
  end
end
