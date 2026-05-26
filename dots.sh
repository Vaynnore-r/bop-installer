#!/usr/bin/env bash

set -e

SRC="$HOME/.local/src"

mkdir -p ~/.config

# backup old configs
mkdir -p ~/.config-backup

[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config-backup/

# symlinks
ln -sf "$SRC/nvim" ~/.config/nvim
ln -sf "$SRC/dots/.zshrc" ~/.zshrc
ln -sf "$SRC/dots/.xinitrc" ~/.xinitrc
