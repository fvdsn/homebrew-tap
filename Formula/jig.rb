class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.1/jig_v2.2.1_darwin_arm64.tar.gz"
      sha256 "27c9de5ca4a15fd2aaaf07cbc63f3819828609d6ee0f203425c64946ad295915"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.1/jig_v2.2.1_darwin_amd64.tar.gz"
      sha256 "6a5eb22ab5b1acfd86c0fa2390dd79bd8fbba69437d7cd41104f7639df3cddd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.1/jig_v2.2.1_linux_arm64.tar.gz"
      sha256 "602a489ff59f12b3b05af5f17d43c3ce19ba6d9e0ef960e0824c493322312a3a"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.2.1/jig_v2.2.1_linux_amd64.tar.gz"
      sha256 "6a720d622fc905f648c795a5ec0fc37c2dfe411d82d37853517d89963ecda821"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.2.1", shell_output("#{bin}/jig --version")
  end
end
