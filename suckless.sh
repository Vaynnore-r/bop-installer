#!/usr/bin/env bash

set -e

SRC="$HOME/.local/src"

cd "$SRC/dwm"
sudo make clean install

cd "$SRC/st"
sudo make clean install

cd "$SRC/dmenu"
sudo make clean install
