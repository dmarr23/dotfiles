#!/bin/bash

# 1. Setup Starship Terminal
mkdir -p ~/.config
cp starship.toml ~/.config/starship.toml
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# 2. Force Install Personal Server-Side VS Code Extensions
echo "Installing lean .NET and Azure VS Code extensions..."

# GitHub & Remote Core
code --install-extension github.codespaces
code --install-extension github.vscode-github-actions
code --install-extension github.vscode-pull-request-github

# .NET & C# Development
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.csdevkit
code --install-extension ms-dotnettools.vscode-dotnet-runtime

# Database (SQL & Fabric)
code --install-extension ms-mssql.mssql
code --install-extension ms-mssql.data-workspace-vscode
code --install-extension ms-mssql.sql-database-projects-vscode
code --install-extension fabric.vscode-fabric

# Azure Deployment & Management
code --install-extension ms-azuretools.vscode-azureresourcegroups
code --install-extension ms-azuretools.vscode-azurestaticwebapps
code --install-extension ms-azuretools.vscode-azurefunctions

# API Testing
code --install-extension humao.rest-client

echo "Dotfiles installation complete! Environment optimized."
