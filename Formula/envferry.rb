require "language/node"

# Homebrew formula for envferry. The url and sha256 below are placeholders that
# the release workflow (.github/workflows/release.yml) fills from the published
# npm tarball before committing the rendered formula to the MalikZu/homebrew-tap
# repo (installed via `brew install MalikZu/tap/envferry`).
class Envferry < Formula
  desc "Move .env files between machines without pasting secrets into chat"
  homepage "https://github.com/MalikZu/envferry"
  url "https://registry.npmjs.org/envferry/-/envferry-0.2.1.tgz"
  sha256 "3ac3353182829eb22507d6c66318920ff9180825ab4f6a7c9ae5f37ff3021a55"
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
