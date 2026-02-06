#!/usr/bin/env bash
set -euo pipefail

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

# Install as default
chsh -s "$(which zsh)"