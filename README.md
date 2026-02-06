## Bootstrap a new machine (WSL / Linux)

### 1. Install chezmoi
Install the chezmoi binary into `~/.local/bin`:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin" init --apply Happlo
```
