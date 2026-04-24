class Copass < Formula
  desc "Copass CLI — ingest and retrieve data from the Copass knowledge graph"
  homepage "https://github.com/olane-labs/o-cli"
  # url + sha256 are bumped automatically by the `Update Formula` workflow
  # on every `@copass/cli` npm release.
  url "https://registry.npmjs.org/@copass/cli/-/cli-2.3.5.tgz"
  sha256 "3e56a7ae24cec5f103c3af5c3cb89f7699c4bc677b0c04291be7c07a4e72a0cc"
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
