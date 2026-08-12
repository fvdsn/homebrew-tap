class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.12.0/jig_v1.12.0_darwin_arm64.tar.gz"
      sha256 "d96d4fde96ac781715c59a7005c4c2711fa8bbf438da8d95c0d712f4699127c2"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.12.0/jig_v1.12.0_darwin_amd64.tar.gz"
      sha256 "64ad189a4d5a3d6554accf71c338dd4bf9105e426ff72d88ab4912dc88c30fa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.12.0/jig_v1.12.0_linux_arm64.tar.gz"
      sha256 "924f067d8e65cdf32425511564f504f8195f36ff87ef2153e74275dcefb0f982"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.12.0/jig_v1.12.0_linux_amd64.tar.gz"
      sha256 "862aeaf5aff12cab5fa2b9948f23ba30c987408d6a7682a667604278f8aca683"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v1.12.0", shell_output("#{bin}/jig --version")
  end
end
