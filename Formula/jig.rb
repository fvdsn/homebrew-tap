class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.1/jig_v4.8.1_darwin_arm64.tar.gz"
      sha256 "ea4e265f114e53b04168d313b3851e59f9ab9dcdd4f0463f272337566d7c4699"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.1/jig_v4.8.1_darwin_amd64.tar.gz"
      sha256 "a122dd3283ae4cd972aee04da483d4fb7b78b54b7a136ccd882d4db8e0effb3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.1/jig_v4.8.1_linux_arm64.tar.gz"
      sha256 "b6d03e9d2b4fb146f886776a2d682fb30499a5ba20b7bbb4ac91436ab5ed1d22"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.8.1/jig_v4.8.1_linux_amd64.tar.gz"
      sha256 "a563adb9f1af95162d091d1ba6e00b5ae270353a6af623506fae4006fde93b03"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.8.1", shell_output("#{bin}/jig --version")
  end
end
