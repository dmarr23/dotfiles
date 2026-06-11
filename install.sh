#!/bin/bash

echo "Deploying global dotfiles architecture..."

# 1. Setup Starship Configuration
mkdir -p ~/.config

# Symlink directly to the persisted dotfiles so live edits are saved
TARGET_FILE="/workspaces/.codespaces/.persistedshare/dotfiles/starship.toml"

if [ -f "$TARGET_FILE" ]; then
    ln -sf "$TARGET_FILE" ~/.config/starship.toml
else
    echo "Warning: starship.toml not found in persisted dotfiles share."
fi

# Hook starship into bash securely
if ! grep -q 'starship init bash' ~/.bashrc; then
  echo 'eval "$(starship init bash)"' >> ~/.bashrc
fi

echo "Dotfiles deployed."
