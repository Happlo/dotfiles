# Bootstrap a new machine (WSL / Linux)

## Run this line to install everything to a new system
```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin" init --apply Happlo
```

## To add ssh keys

```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

Add the printed key to GitHub (or other service)