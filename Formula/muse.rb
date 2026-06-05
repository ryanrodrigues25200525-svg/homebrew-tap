class Muse < Formula
  desc "CLI, TUI, and MCP controller for Apple Music on macOS"
  homepage "https://github.com/ryanrodrigues25200525-svg/Apple-music-cli"
  url "https://github.com/ryanrodrigues25200525-svg/Apple-music-cli/releases/download/v0.1.0/muse_v0.1.0_darwin_universal.tar.gz"
  sha256 "7a395dc2bf555e57ddd4b148ba20663b5dc56cce9b5a5a198a9400893a41a342"
  license "MIT"

  depends_on :macos

  def install
    bin.install "muse_v0.1.0_darwin_universal/mu"
  end

  test do
    assert_match "Muse", shell_output("#{bin}/mu version")
  end
end
