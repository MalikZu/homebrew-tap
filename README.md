# homebrew-tap

Homebrew tap for [MalikZu](https://github.com/MalikZu)'s CLI tools.

## Usage

```sh
brew install MalikZu/tap/envferry
```

Homebrew auto-taps this repo on first use; no separate `brew tap` needed.

## Formulae

Formulae live in [`Formula/`](Formula/) and are updated automatically by each
tool's release workflow (for envferry, `.github/workflows/release.yml` renders
and commits `Formula/envferry.rb` on every stable release).
