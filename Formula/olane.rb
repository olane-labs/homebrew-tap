class Olane < Formula
  desc "oLane Network CLI (deprecated — use `copass` instead)"
  homepage "https://github.com/olane-labs/o-cli"
  url "https://registry.npmjs.org/@olane/o-cli/-/o-cli-2.2.4.tgz"
  sha256 "0f91eaeedd005e8e041292755ea622630b826a86512ef7cf813e7aa02f1fb4c9"
  license "MIT"

  # The upstream npm package was renamed from @olane/o-cli to @copass/cli
  # and the binary from `olane` to `copass`. Install the new formula:
  #   brew install olane-labs/tap/copass
  deprecate! date: "2026-04-15", because: :repo_renamed, replacement: "copass"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/olane --version")
  end
end
