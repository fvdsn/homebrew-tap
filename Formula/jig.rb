class Jig < Formula
  desc "Manage a workspace of many Git repositories from a single shared schema"
  homepage "https://github.com/fvdsn/jig"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.4/jig_v2.0.4_darwin_arm64.tar.gz"
      sha256 "ba97d26e4107191b77de40a66373eef5f8572d4b225510a2f128f0275cf5566b"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.4/jig_v2.0.4_darwin_amd64.tar.gz"
      sha256 "9bfa84ff849b86a8c75e907532a058e0671f330b4086551786dbd8d3fca6fea0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.4/jig_v2.0.4_linux_arm64.tar.gz"
      sha256 "85add58b224d166a13b552208055b01536f2eb56b84f00d69dd96b70881d3ac4"
    end
    on_intel do
      url "https://github.com/fvdsn/jig/releases/download/v2.0.4/jig_v2.0.4_linux_amd64.tar.gz"
      sha256 "b6d98ed949b98510bee7e31a564f5e213ff76eff133a76f112762b56a8145927"
    end
  end

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig v2.0.4", shell_output("#{bin}/jig --version")
  end
end
