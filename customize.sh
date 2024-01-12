#!/bin/bash

#software installation

sudo pacman -Sy kitty git zsh curl hyprpaper otf-font-awesome waybar neovim net-tools neofetch git rofi

### kitty setup
cd ~/.config/kitty
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
#create soft link to theme configuration
ln -s ./kitty-themes/themes/ayu_mirage.conf ~/.config/kitty/theme.conf
touch kitty.conf && echo "include ./theme.conf" > kitty.conf
echo "background_opacity 0.95" >> ~/.config/kitty/kitty.conf

### ZSH setup
#custom zsh shell
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" & sleep 5
cp ~/.zshrc ~/.zshrc-backup
cp ~/linux-customization/.zshrc ~/

### wallpaper setup
mkdir ~/wallpaper
cp -rf ~/linux-customization/wallpaper ~/
cp -r ~/linux-customization/hyprland.conf  ~/linux-customization/hyprpaper.conf .config/hypr

### hypr config
mkdir ~/.config/hypr/hypr_backup && cp ~/.config/hypr/* ~/.config/hypr/hypr_backup
rm -rf ~/.config/hypr* && cp -r ~/linux-customization/hypr/* ~/.config/hypr/ 


exit
