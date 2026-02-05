#!/usr/bin/env bash
set -euo pipefail

if ! command -v apt-get >/dev/null 2>&1; then
  echo "apt-get not available, skipping"
  exit 0
fi

echo "==> Updating apt index"
sudo apt-get update

echo "==> Installing base packages"
sudo apt-get install -y \
  ca-certificates \
  curl \
  git \
  gcc \
  g++ \
  make \
  pkg-config \
  zsh \
  fzf \
  bat \
  git-delta \
  cmake \
  ninja-build \
  gettext \
  unzip \
  ripgrep \
  fd-find

# Ubuntu: bat binary is batcat
if command -v batcat >/dev/null 2>&1 && ! command -v bat >/dev/null 2>&1; then
  echo "==> Creating bat -> batcat symlink"
  sudo ln -sf "$(command -v batcat)" /usr/local/bin/bat
fi

echo "==> apt packages installed"
