#!/bin/bash

echo "lazy.sh - Brew-powered Dev Setup (macOS & Linux)"

# Ensure brew is installed
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> "$HOME/.bashrc"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

echo "Homebrew is ready. Installing packages..."

# Install Node.js
brew install node

# Install Python
brew install python

# Install VS Code
brew install --cask visual-studio-code 2>/dev/null || brew install visual-studio-code

echo "Done! Node, Python, and VS Code are installed!"

