#!/usr/bin/env bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install rust tools
source "$HOME/.cargo/env"
cargo install zellij starship zoxide