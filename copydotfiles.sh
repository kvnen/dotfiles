#!/bin/bash
SCRIPT_DIR=$(dirname "$0")
cp -r $HOME/.config/nvim "$SCRIPT_DIR" 
cp $HOME/.zshrc "$SCRIPT_DIR"
cp $HOME/.config/alacritty.toml "$SCRIPT_DIR"
