class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.1/jig_v4.3.1_darwin_arm64.tar.gz"
      sha256 "21a62e2b331fc0ddf65638f75e97597b0514169b33423f85a2e4d4b3553dfea5"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.1/jig_v4.3.1_darwin_amd64.tar.gz"
      sha256 "7c4773ec4eca6ca73fcc99b198f4a509da0ba43510b48d1a13285dfb67dd1249"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.1/jig_v4.3.1_linux_arm64.tar.gz"
      sha256 "23c78894e7e126342c719f79c293926fed173471cadc7d61a4cd04680d5ce83f"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.3.1/jig_v4.3.1_linux_amd64.tar.gz"
      sha256 "1e709da44e2a9ce7b4caf55631d449c8ff850b1d53253d35401b4e95e1add122"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.3.1", shell_output("#{bin}/jig --version")
  end
end
