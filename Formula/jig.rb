class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "5.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.0/jig_v5.0.0_darwin_arm64.tar.gz"
      sha256 "fc7e12b58bb144338b2e3d4a88db347f9378353efb1a73d4273271d31afc44aa"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.0/jig_v5.0.0_darwin_amd64.tar.gz"
      sha256 "6746b1a66ce8ffde48533ce90bc69ccac36be8dda1c023a0b4b17f8604b29195"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.0/jig_v5.0.0_linux_arm64.tar.gz"
      sha256 "7fcd609b4b786eb5fabfbd8f03b6c55c1252c91f57bdddd108a0f5baf42df500"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.0/jig_v5.0.0_linux_amd64.tar.gz"
      sha256 "42045d644f6f3341fa3324155fe076f7e301b8b142dba6dd91cd6ce84def5951"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v5.0.0", shell_output("#{bin}/jig --version")
  end
end
