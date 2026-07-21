require "language/node"

# Homebrew formula for envferry. The url and sha256 below are placeholders that
# the release workflow (.github/workflows/release.yml) fills from the published
# npm tarball before committing the rendered formula to the MalikZu/homebrew-tap
# repo (installed via `brew install MalikZu/tap/envferry`).
class Envferry < Formula
  desc "Move .env files between machines without pasting secrets into chat"
  homepage "https://github.com/MalikZu/envferry"
  url "https://registry.npmjs.org/envferry/-/envferry-0.2.0.tgz"
  sha256 "1b270dbebf39e39dbb3acc2219b9779b5d4c24c6bc4ea392cd5bd3f44ae8da1c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "envferry", shell_output("#{bin}/envferry --help")
  end
end
