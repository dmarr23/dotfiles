#!/bin/bash

# 1. Setup Starship Terminal
mkdir -p ~/.config
cp starship.toml ~/.config/starship.toml
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# 2. Force Install Personal Server-Side VS Code Extensions
echo "Installing global VS Code extensions..."

code --install-extension github.codespaces
code --install-extension github.vscode-github-actions
code --install-extension github.vscode-pull-request-github
code --install-extension ms-azuretools.vscode-azurefunctions
code --install-extension ms-azuretools.vscode-azureresourcegroups
code --install-extension ms-azuretools.vscode-azurestaticwebapps
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.vscode-dotnet-runtime

echo "Dotfiles installation complete!"
