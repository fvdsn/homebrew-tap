class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.7.0/jig_v4.7.0_darwin_arm64.tar.gz"
      sha256 "b946c0da30173a58e2f9bb37ea35adcc4b9ce33a552254bd0344b1610c91bd8e"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.7.0/jig_v4.7.0_darwin_amd64.tar.gz"
      sha256 "a409726a140d9a86320e4f6efc6fc015a66d043918e5285487661dc69844bd65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.7.0/jig_v4.7.0_linux_arm64.tar.gz"
      sha256 "06597efe41807376598f42008d2a1943c0c679cb9a25272f9a49ffef4730f4bb"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.7.0/jig_v4.7.0_linux_amd64.tar.gz"
      sha256 "5f74a532b3a3dbf71da6153a47343094f3e08821f5a98a7ad46f98e030bbfd12"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.7.0", shell_output("#{bin}/jig --version")
  end
end
