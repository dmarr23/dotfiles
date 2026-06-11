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

# 2. Force Install Global VS Code Extensions
echo "Injecting full-stack C# and Azure extension stack..."

# Chained installation (NO background '&' so GitHub doesn't kill it prematurely)
code \
  --install-extension github.codespaces \
  --install-extension github.vscode-github-actions \
  --install-extension github.vscode-pull-request-github \
  --install-extension ms-dotnettools.csharp \
  --install-extension ms-dotnettools.csdevkit \
  --install-extension ms-dotnettools.vscode-dotnet-runtime \
  --install-extension ms-mssql.mssql \
  --install-extension ms-mssql.data-workspace-vscode \
  --install-extension ms-mssql.sql-database-projects-vscode \
  --install-extension fabric.vscode-fabric \
  --install-extension ms-azuretools.vscode-azureresourcegroups \
  --install-extension ms-azuretools.vscode-azurestaticwebapps \
  --install-extension ms-azuretools.vscode-azurefunctions \
  --install-extension humao.rest-client

echo "Dotfiles deployed. Extensions installed."
