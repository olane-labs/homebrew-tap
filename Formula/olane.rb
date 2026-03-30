class Olane < Formula
  desc "oLane Network CLI - multi-agent architecture toolkit"
  homepage "https://github.com/olane-labs/o-cli"
  url "https://registry.npmjs.org/@olane/o-cli/-/o-cli-2.1.0.tgz"
  sha256 "35257b96a404464a15ca56d5ab949a9c9f3ece16a47ac3de4892d17bc4589fcb"
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
