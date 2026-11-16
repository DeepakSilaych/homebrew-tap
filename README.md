# Deepak's Homebrew tap

## Install sess

Persistent SSH terminals powered by zmx, for macOS and Linux on ARM64 and AMD64.

```sh
brew install deepaksilaych/tap/sess
sess init user@host
sess set --host user@host
sess new work
```

Update with `brew update && brew upgrade sess`. Bash, zsh, and fish completions are included.

[Documentation](https://github.com/DeepakSilaych/sess#readme)

## Install Relay

```sh
brew install --cask deepaksilaych/tap/relay-workspaces
```

Update with `brew update && brew upgrade --cask relay-workspaces`.

The cask was previously named `relay` (and before that `magi`). `relay` now also
names an unrelated cask in Homebrew's main repository, so existing installs are
renamed to `relay-workspaces` on the next `brew update`.

Magi currently ships for Apple Silicon on macOS 12 or newer. The cask installs Git, GitHub CLI, tmux and Python for local sessions. Remote hosts need their own dependencies.

The build has an ad-hoc signature and is not Apple-notarized. macOS may require explicit approval in System Settings → Privacy & Security after the first launch attempt. This tap does not disable Gatekeeper or remove quarantine attributes.

Uninstalling the cask removes the app, not your workspaces or running sess sessions. Existing manual installs of Magi may need to be moved out of Applications before Homebrew can install it.
