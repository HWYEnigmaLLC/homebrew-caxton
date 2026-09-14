# Homebrew tap for Caxton

[Caxton](https://caxton.app/) is a native macOS text and CSV editor for multi-gigabyte files.

```sh
brew tap hwyenigmallc/caxton
brew install --cask caxton
```

Homebrew 7 and later asks you to trust a third-party tap before it loads its casks. If `brew tap` stops with "untrusted tap", run this first and repeat the two commands above:

```sh
brew trust hwyenigmallc/caxton
```

The cask installs the same signed and notarized DMG that caxton.app serves, and the app keeps itself current through its built-in updater. To remove it together with its support files:

```sh
brew uninstall --zap --cask caxton
```

Requires macOS 13 or later.
