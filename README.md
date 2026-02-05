## Bootstrap a new machine (WSL / Linux)

### 1. Install chezmoi
Install the chezmoi binary into `~/.local/bin`:

```sh
mkdir -p "$HOME/.local/bin"
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
```

Ensure the directory is on `PATH`:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

Reload your shell or open a new terminal.

Verify:
```sh
chezmoi --version
```

---

### 2. Initialize dotfiles (HTTPS)
HTTPS works everywhere (no SSH required):

```sh
chezmoi init https://github.com/Happlo/dotfiles.git
```

Apply the configuration:

```sh
chezmoi apply
