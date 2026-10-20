class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.0/jig_v4.0.0_darwin_arm64.tar.gz"
      sha256 "e7ef63eaf1df04baf702bc758749c192bd749bb8184615ccde7d37223d0c26d2"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.0/jig_v4.0.0_darwin_amd64.tar.gz"
      sha256 "6aae23697390f7754fcf4f265f35f070e330342ff5ebbeeb03bcb84e5438382a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.0/jig_v4.0.0_linux_arm64.tar.gz"
      sha256 "2dee28ac1e449aeb767fecb1c97567953e671f6e83487ccfdfe8ed83de4ca417"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v4.0.0/jig_v4.0.0_linux_amd64.tar.gz"
      sha256 "d77b5adad90f6746977953567e80c1316ded8a0c9a8eee7f5d31da5ab8932586"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v4.0.0", shell_output("#{bin}/jig --version")
  end
end
