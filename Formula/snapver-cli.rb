class SnapverCli < Formula
  desc "Snapshot version management tool"
  homepage "https://github.com/snapver/snapver-cli"
  url "https://github.com/snapver/snapver-cli/archive/v0.0.1.tar.gz"
  sha256 "19bff9c0458ffa9d737dd0c7695406f0ccdb9d77fb98a856ec9bae82e95bbcb7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"snapver-cli"), "."
  end

  test do
    output = shell_output("#{bin}/snapver-cli version")
    assert_match "v0.0.1", output
  end
end