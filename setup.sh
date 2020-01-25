#!/bin/sh

YELLOW='\033[1;33m' # Colors for use in the program
GREEN='\033[0;32m'

echo -e "${YELLOW}Creating symlinks... " # Use stow to create the symlinks
stow -v mountdrives ranger rofi sway vim waybar xdefaults zsh
echo -e "${GREEN}Done! "
