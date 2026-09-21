class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.1/jig_v2.5.1_darwin_arm64.tar.gz"
      sha256 "4a82b9f388b07638de5e6dbf0dd2679ebea49f32f2a2e9a5440468b7c22f7950"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.1/jig_v2.5.1_darwin_amd64.tar.gz"
      sha256 "9deb328c75088ce1bfc5952204810c688303b33df97e6122b012dd5b95e1cfb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.1/jig_v2.5.1_linux_arm64.tar.gz"
      sha256 "d60a3827f35da50d2b199d209caa5a14849f364fd85948c10ebc2dcd0d28c2f8"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.5.1/jig_v2.5.1_linux_amd64.tar.gz"
      sha256 "7add56e019d7a38003e669d8f7b8cbae6bcfdc84dcf6736ceddfb5f664af6083"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.5.1", shell_output("#{bin}/jig --version")
  end
end
