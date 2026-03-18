class Olane < Formula
  desc "oLane Network CLI - multi-agent architecture toolkit"
  homepage "https://github.com/olane-labs/o-cli"
  url "https://registry.npmjs.org/@olane/o-cli/-/o-cli-2.0.18.tgz"
  sha256 "b7351c18783757f417edbe61f6a1910a8d944eb9a8cf380f1651b6d2730635ee"
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
