## Bootstrap a new machine (WSL / Linux)

### 1. Install chezmoi
Install the chezmoi binary into `~/.local/bin`:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
```

### 2. Initialize dotfiles (HTTPS)
HTTPS works everywhere (no SSH required):

```sh
chezmoi init https://github.com/Happlo/dotfiles.git
chezmoi apply
```
