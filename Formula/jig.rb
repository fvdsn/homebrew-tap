class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "5.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.1/jig_v5.0.1_darwin_arm64.tar.gz"
      sha256 "ea2070af21d373522e7247a96c6280c1fe99f76fa9b16d75aa464b004f5a1f5d"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.1/jig_v5.0.1_darwin_amd64.tar.gz"
      sha256 "671b108343df35d63b026f70820a44f8ce009cb95594a1546e58b4cd25edc08d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.1/jig_v5.0.1_linux_arm64.tar.gz"
      sha256 "5c2c906c414f4a4aebedd204936222313d6644143dade987a84733783af5cbaf"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v5.0.1/jig_v5.0.1_linux_amd64.tar.gz"
      sha256 "c6a071c5566d4dd2bfbcd08d7d7be921ad97f0f45d6442f70e6cbc9cc38ca2a5"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v5.0.1", shell_output("#{bin}/jig --version")
  end
end
