class Copass < Formula
  desc "Copass CLI — ingest and retrieve data from the Copass knowledge graph"
  homepage "https://github.com/olane-labs/o-cli"
  # url + sha256 are bumped automatically by the `Update Formula` workflow
  # on every `@copass/cli` npm release.
  url "https://registry.npmjs.org/@copass/cli/-/cli-2.3.3.tgz"
  sha256 "a21750ff9c249c8fcac1f0bcc2288213612ca00a0e73b3ca6655dc54dcd893c8"
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
