class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.7/jig_v2.0.7_darwin_arm64.tar.gz"
      sha256 "8ebeef49962621c5df4384e4768b5bd6c8cc4953a1c55e7267d08133f9ca0beb"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.7/jig_v2.0.7_darwin_amd64.tar.gz"
      sha256 "2a7e6b47d0ff3d657a43d94538f2b4bc9257f022e1a3a4c29c52b1ab507cf7f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.7/jig_v2.0.7_linux_arm64.tar.gz"
      sha256 "7cb18c89045ad052f059942647166fd9166e1d1c90741f3207975916d7fb162d"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.7/jig_v2.0.7_linux_amd64.tar.gz"
      sha256 "422ae89e4430982ebb3d3f48d8577582aa28458ce30e96d62a4e0dfa5834c8e7"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.7", shell_output("#{bin}/jig --version")
  end
end
