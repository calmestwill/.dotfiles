#!/bin/sh

YELLOW='\033[1;33m' # Colors for use in the program
GREEN='\033[0;32m'
RESET='\033[0m'

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root! "
    exit
fi

echo -e "${YELLOW}Updating package repositories...${RESET}"
pacman -Syy

read -p "Would you like to install main packages? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then

    echo -e "${YELLOW}Installing main packages...${RESET}"
    pacman -S sway ranger rofi sway vim waybar rxvt-unicode zsh stow

else
    pacman -S stow
fi


echo -e "${YELLOW}Creating symlinks...${RESET}" # Use stow to create the symlinks
stow -v mountdrives ranger rofi sway vim waybar xdefaults zsh
echo -e "${GREEN}Done! "
