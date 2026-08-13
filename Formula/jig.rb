class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.5/jig_v2.0.5_darwin_arm64.tar.gz"
      sha256 "c594b56b70fab28820b1cc6ff6154acb7c7b3a935e2c06e3385c873ab8a4cc11"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.5/jig_v2.0.5_darwin_amd64.tar.gz"
      sha256 "104e43e4c5cf054f6e1c15ed2c9cb1dab2df4b93e21265d9e1a1394b817f2ae2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.5/jig_v2.0.5_linux_arm64.tar.gz"
      sha256 "34b074feb9f8de83d66538ddf972f2375796a50f597d0af82ee525e8c412dbad"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.5/jig_v2.0.5_linux_amd64.tar.gz"
      sha256 "05d3a13852122d0020b8050181d998c787c58fd1427e3d35cfe59c178abfb160"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.5", shell_output("#{bin}/jig --version")
  end
end
