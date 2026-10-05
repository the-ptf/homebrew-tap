# Milagre Homebrew tap

Install the signed macOS app on Apple Silicon or Intel:

```sh
brew install --cask the-ptf/tap/milagre
```

Milagre stores Chats and settings outside the app bundle. Uninstalling this cask keeps that data.

This tap follows stable releases of [Milagre](https://github.com/the-ptf/milagre-ade). A scheduled workflow checks both published DMGs and computes their SHA-256 hashes before updating the cask. Milagre also checks for app updates itself.
