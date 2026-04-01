class Olane < Formula
  desc "oLane Network CLI - multi-agent architecture toolkit"
  homepage "https://github.com/olane-labs/o-cli"
  url "https://registry.npmjs.org/@olane/o-cli/-/o-cli-2.1.6.tgz"
  sha256 "6cb00011dc16f2b3770d4bd083315de2e0cb2354adb8ceab0da94a89e20273ed"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/olane --version")
  end
end
