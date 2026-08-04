class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.9.0/jig_v1.9.0_darwin_arm64.tar.gz"
      sha256 "12d175e8de62099c1976d4f68ea903c1ac41dcffa42b890ebe2513ec45727d86"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.9.0/jig_v1.9.0_darwin_amd64.tar.gz"
      sha256 "9987b19d7cb11be6f8fd635d8562710c865ae96b956ab1602c4dc33444f2dd73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.9.0/jig_v1.9.0_linux_arm64.tar.gz"
      sha256 "77474f6b642b3ab183a5b7a202c88aac182bc8d938f4307d71168036fa4fb30a"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.9.0/jig_v1.9.0_linux_amd64.tar.gz"
      sha256 "2422b949e57de33d0b35c7461277dad862e935b3df385a4dbd2b83aed083f8dc"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v1.9.0", shell_output("#{bin}/jig --version")
  end
end
