class Olane < Formula
  desc "oLane Network CLI - multi-agent architecture toolkit"
  homepage "https://github.com/olane-labs/o-cli"
  url "https://registry.npmjs.org/@olane/o-cli/-/o-cli-2.1.1.tgz"
  sha256 "0ab4ea94bf2d3ddd0b1f4449a774587e65c26c32f0ee7ecc0c57b0865953cd6f"
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
