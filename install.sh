#!/bin/bash

# Create the config directory if it doesn't exist
mkdir -p ~/.config

# Copy the starship config from this repo into the system folder
cp starship.toml ~/.config/starship.toml

# Ensure starship is hooked into bash
echo 'eval "$(starship init bash)"' >> ~/.bashrc
