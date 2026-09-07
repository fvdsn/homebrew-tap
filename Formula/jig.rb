class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.0/jig_v2.5.0_darwin_arm64.tar.gz"
      sha256 "68d35f28a417c7669821ac8ba1189c5b6b558a67fc25de472cfbb9d53c4ff664"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.0/jig_v2.5.0_darwin_amd64.tar.gz"
      sha256 "bcce2f50d95bd8f5aa539e5ea33c23b554fa12139f0cc43781f1fe3ad5ee1809"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.0/jig_v2.5.0_linux_arm64.tar.gz"
      sha256 "d4d10347a3573458880398a8e90abf11d1020dd69fc318936914e020cb419036"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.0/jig_v2.5.0_linux_amd64.tar.gz"
      sha256 "10949339dfd2e9b9abdd2e12f5340e13892315010f236ee1ccd9a5e1c6be4665"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.5.0", shell_output("#{bin}/jig --version")
  end
end
