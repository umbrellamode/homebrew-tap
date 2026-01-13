class Wcp < Formula
  desc "Bidirectional log streaming CLI for AI coding agents"
  homepage "https://wcp.dev"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umbrellamode/wcp/releases/download/v#{version}/wcp-darwin-arm64"
      sha256 ""
    end
    on_intel do
      url "https://github.com/umbrellamode/wcp/releases/download/v#{version}/wcp-darwin-x64"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/umbrellamode/wcp/releases/download/v#{version}/wcp-linux-x64"
      sha256 ""
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "wcp"
  end

  test do
    assert_match "wcp", shell_output("#{bin}/wcp --version")
  end
end
