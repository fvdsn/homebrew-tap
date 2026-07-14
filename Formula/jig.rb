class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "1.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.2/jig_v1.8.2_darwin_arm64.tar.gz"
      sha256 "99f880eea62ae444faed9df7d1f23b2980c8adc2bdbfea9e30e80b5ac7978ffd"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.2/jig_v1.8.2_darwin_amd64.tar.gz"
      sha256 "ae0da7e4a5fdaf22eca7bfc3d08a0bccd92e7931fbf19849c806582296145b8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.2/jig_v1.8.2_linux_arm64.tar.gz"
      sha256 "60634b570a5a108dc291ab992eac754fce3fa3b5db7fd44ae7c5a1e03739a897"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v1.8.2/jig_v1.8.2_linux_amd64.tar.gz"
      sha256 "3930fa4e602d9d92d088fc7d4b0c9cb8555d92693901e4731efb2481ac9bb1a4"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v1.8.2", shell_output("#{bin}/jig --version")
  end
end
