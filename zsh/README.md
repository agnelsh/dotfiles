# Zsh Configuration

This directory contains a custom `.zshrc` configuration for macOS, optimized for development and enhanced shell experience.

## Features
- Powerlevel10k theme support
- Oh My Zsh integration
- Modern aliases and tools (bat, exa, fd, fzf, ripgrep)
- Syntax highlighting and autosuggestions
- Custom network and utility aliases
- Homebrew and user bin path setup

## Usage
1. Ensure Oh My Zsh and Powerlevel10k are installed.
2. Copy `.zshrc` to your home directory or symlink it:
   ```sh
   ln -sf $(pwd)/.zshrc $HOME/.zshrc
   ```
3. Restart your terminal or run:
   ```sh
   source ~/.zshrc
   ```

## Customization
- Edit `.zshrc` to add your own aliases, plugins, or theme settings.
- To customize the Powerlevel10k prompt, run:
  ```sh
  p10k configure
  ```

## Troubleshooting
- If `$ZSH/oh-my-zsh.sh` is missing, reinstall Oh My Zsh.
- If Powerlevel10k prompt does not load, check that `~/.p10k.zsh` exists and is valid.
