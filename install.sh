#!/usr/bin/env bash

set -e

REPO_DIR="$HOME/.local/src"
DOTS_DIR="$HOME/.config/bop"

mkdir -p "$REPO_DIR"
mkdir -p "$DOTS_DIR"

echo "[*] Installing Fedora packages..."
bash packages.sh

echo "[*] Cloning repos..."
cd "$REPO_DIR"

repos=(
    dwm
    st
    dmenu
    dots
    scripts
    nvim
)

for repo in "${repos[@]}"; do
    if [ ! -d "$repo" ]; then
        git clone "https://github.com/BreadOnPenguins/$repo.git"
    fi
done

echo "[*] Building suckless tools..."
bash suckless.sh

echo "[*] Installing dotfiles..."
bash dots.sh

echo "[*] Done."
echo "Run: startx"
