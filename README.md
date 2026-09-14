# Deepak's Homebrew tap

## Install Magi

```sh
brew tap deepaksilaych/tap
brew install --cask magi
```

Or, in one command:

```sh
brew install --cask deepaksilaych/tap/magi
```

Update with `brew update && brew upgrade --cask magi`.

Magi currently ships for Apple Silicon on macOS 12 or newer. The cask installs Git, GitHub CLI, tmux and Python for local sessions. Remote hosts need their own dependencies.

The build has an ad-hoc signature and is not Apple-notarized. macOS may require explicit approval in System Settings → Privacy & Security after the first launch attempt. This tap does not disable Gatekeeper or remove quarantine attributes.

Uninstalling the cask removes the app, not your workspaces or running sess sessions. Existing manual installs of Magi may need to be moved out of Applications before Homebrew can install it.
