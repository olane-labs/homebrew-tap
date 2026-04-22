class Copass < Formula
  desc "Copass CLI — ingest and retrieve data from the Copass knowledge graph"
  homepage "https://github.com/olane-labs/o-cli"
  # url + sha256 are bumped automatically by the `Update Formula` workflow
  # on every `@copass/cli` npm release.
  url "https://registry.npmjs.org/@copass/cli/-/cli-2.2.14.tgz"
  sha256 "1da84e349ee7f4beb75cc81620fde7d800d08235f62b9b4aed04880761850e47"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/copass --version")
  end
end
