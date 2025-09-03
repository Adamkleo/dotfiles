#!/bin/bash

# Dotfiles installation script
# Usage: ./install.sh

set -e

echo "Installing dotfiles..."

# Check if stow is installed
if ! command -v stow &> /dev/null; then
    echo "Error: GNU Stow is not installed."
    echo "Install with: brew install stow"
    exit 1
fi

# Backup existing configs
echo "Backing up existing configs..."
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.backup
[ -f ~/.tmux.conf ] && cp ~/.tmux.conf ~/.tmux.conf.backup

# Remove existing configs
echo "Removing existing configs..."
rm -f ~/.zshrc ~/.tmux.conf

# Create symlinks with stow
echo "Creating symlinks..."
stow zsh tmux

echo "Dotfiles installed successfully!"
echo "Backups saved as:"
echo "  ~/.zshrc.backup"
echo "  ~/.tmux.conf.backup"
echo ""
echo "Reload your shell with: source ~/.zshrc"