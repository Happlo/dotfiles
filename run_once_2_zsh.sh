#!/usr/bin/env bash
set -euo pipefail
cp ~/.zshrc ~/.zshrc.backup

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

# Install as default
chsh -s "$(which zsh)"

# Restore previous .zshrc
mv ~/.zshrc.backup ~/.zshrc