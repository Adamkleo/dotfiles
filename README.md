# Dotfiles

My personal configuration files for macOS development environment.

## What's included

- **zsh**: Shell configuration with aliases and prompt setup
- **tmux**: Terminal multiplexer configuration

## Requirements

- macOS
- [Homebrew](https://brew.sh)
- GNU Stow: `brew install stow`

## Installation

```bash
git clone https://github.com/Adamkleo/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

## Manual installation

```bash
cd ~/dotfiles
stow zsh tmux
```

## What it does

- Creates symlinks from your home directory to the dotfiles repo
- Backs up existing configs before installing
- Uses GNU Stow for clean symlink management

## Uninstall

```bash
cd ~/dotfiles
stow -D zsh tmux
```

Then restore from backups:
```bash
cp ~/.zshrc.backup ~/.zshrc
cp ~/.tmux.conf.backup ~/.tmux.conf
```