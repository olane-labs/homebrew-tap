class Copass < Formula
  desc "Copass CLI — ingest and retrieve data from the Copass knowledge graph"
  homepage "https://github.com/olane-labs/o-cli"
  # url + sha256 are bumped automatically by the `Update Formula` workflow
  # on every `@copass/cli` npm release.
  url "https://registry.npmjs.org/@copass/cli/-/cli-2.2.6.tgz"
  sha256 "d0a25890c39ee453874479bc41966b5dc37323a6cd5cd098aa99e1fbd5568220"
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
