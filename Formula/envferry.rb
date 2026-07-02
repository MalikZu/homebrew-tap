require "language/node"

# Homebrew formula for envferry. The url and sha256 below are placeholders that
# the release workflow (.github/workflows/release.yml) fills from the published
# npm tarball before committing the rendered formula to the MalikZu/homebrew-tap
# repo (installed via `brew install MalikZu/tap/envferry`).
class Envferry < Formula
  desc "Move .env files between machines without pasting secrets into chat"
  homepage "https://github.com/MalikZu/envferry"
  url "https://registry.npmjs.org/envferry/-/envferry-0.1.3.tgz"
  sha256 "7feca3bcbf54de697fc17119caffbdab0b5078357a8e0ddb25333d29d094a2c4"
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
