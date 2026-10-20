class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.6.0/jig_v4.6.0_darwin_arm64.tar.gz"
      sha256 "73d2022a10fdc8fb27522e2cf6d39abdcdbfa81635062e8f388aba403b348041"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.6.0/jig_v4.6.0_darwin_amd64.tar.gz"
      sha256 "eb9f56ec78190aaaaa12952857aac57885d676eed4ffed8b400f6f168efe8e94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.6.0/jig_v4.6.0_linux_arm64.tar.gz"
      sha256 "7abc1e5c0b5c81a9d01c39f44f510f7e50107bb8fbb9f6f789863b0cd4b08991"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.6.0/jig_v4.6.0_linux_amd64.tar.gz"
      sha256 "76afe41532dfad9af2767f6318f83332a36babc464bc386e95b3578a2ec6ec1a"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.6.0", shell_output("#{bin}/jig --version")
  end
end
