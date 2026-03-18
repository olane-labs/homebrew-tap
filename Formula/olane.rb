class Olane < Formula
  desc "oLane Network CLI - multi-agent architecture toolkit"
  homepage "https://github.com/olane-labs/o-cli"
  url "https://registry.npmjs.org/@olane/o-cli/-/o-cli-2.0.22.tgz"
  sha256 "d165daf19ce175a47299470bd5417b681e467d7280021c571f25a50787d00f35"
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
