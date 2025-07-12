class SnapverCli < Formula
  desc "Snapshot version management tool"
  homepage "https://github.com/snapver/snapver-cli"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/snapver/snapver-cli/releases/download/v0.0.4/snapver-cli_v0.0.4_darwin_amd64.tar.gz"
      sha256 "834463a7c8ffeaf86a46972feaa3f1fabbdc1dbefe37348914f108990bc510d8"

      def install
        bin.install "snapver-cli_v0.0.4_darwin_amd64" => "snapver-cli"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/snapver/snapver-cli/releases/download/v0.0.4/snapver-cli_v0.0.4_darwin_arm64.tar.gz"
      sha256 "c6d227eccb05f2d639266b2f8400088277bb54963fee3673c2f548170dc6bcdd"

      def install
        bin.install "snapver-cli_v0.0.4_darwin_arm64" => "snapver-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/snapver/snapver-cli/releases/download/v0.0.4/snapver-cli_v0.0.4_linux_amd64.tar.gz"
      sha256 "3c2f6539a3a5bcb588f3d33b64ad1a473392d6fcd06426e9c8ff065a4d6fae0f"

      def install
        bin.install "snapver-cli_v0.0.4_linux_amd64" => "snapver-cli"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/snapver/snapver-cli/releases/download/v0.0.4/snapver-cli_v0.0.4_linux_arm64.tar.gz"
      sha256 "a49d65bda3064593ddbed86fd0023e450512cbd79b8a4f95b1fa0411be4be484"

      def install
        bin.install "snapver-cli_v0.0.4_linux_arm64" => "snapver-cli"
      end
    end
  end

  test do
    output = shell_output("#{bin}/snapver-cli version")
    assert_match "v0.0.4", output
  end
end