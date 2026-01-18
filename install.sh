#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Create config directories
mkdir -p ~/.config/gh
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/opencode

# Backup existing files and create symlinks
backup_and_link() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "Backing up $dest to $dest.bak"
        mv "$dest" "$dest.bak"
    fi

    ln -sf "$src" "$dest"
    echo "Linked $src -> $dest"
}

backup_and_link "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
backup_and_link "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"
backup_and_link "$DOTFILES_DIR/gh_config.yml" "$HOME/.config/gh/config.yml"
backup_and_link "$DOTFILES_DIR/ghostty.config" "$HOME/.config/ghostty/config"
backup_and_link "$DOTFILES_DIR/opencode.json" "$HOME/.config/opencode/opencode.json"

echo ""
echo "Done! You may need to restart your shell or run: source ~/.zshrc"
