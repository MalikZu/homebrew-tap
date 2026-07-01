require "language/node"

# Homebrew formula for envferry. The url and sha256 below are placeholders that
# the release workflow (.github/workflows/release.yml) fills from the published
# npm tarball before committing the rendered formula to the MalikZu/homebrew-tap
# repo (installed via `brew install MalikZu/tap/envferry`).
class Envferry < Formula
  desc "Move .env files between machines without pasting secrets into chat"
  homepage "https://github.com/MalikZu/envferry"
  url "https://registry.npmjs.org/envferry/-/envferry-0.1.1.tgz"
  sha256 "49c18839f44d595716c5a6a6cd702b2af0e304000c8c4b3f0a52c99329c3533c"
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
