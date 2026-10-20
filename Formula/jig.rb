class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.4.0/jig_v4.4.0_darwin_arm64.tar.gz"
      sha256 "8f90ef2de334f71a0337afceaf090d2fb5483af169b1c32889e8f3173cdba93d"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.4.0/jig_v4.4.0_darwin_amd64.tar.gz"
      sha256 "3c8a74f9ac8f770d2fa069766e1b47b9d184da1fb83b27b2c4c4d1a49d357d9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.4.0/jig_v4.4.0_linux_arm64.tar.gz"
      sha256 "d81460a39c47bc1b84d58c26510a4dcf6e6a3e6817036ae33e3082763662be02"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.4.0/jig_v4.4.0_linux_amd64.tar.gz"
      sha256 "e10e6c07f31de8dab1ec69441d68f19cd2930a422273a20999b0632b704480cd"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.4.0", shell_output("#{bin}/jig --version")
  end
end
