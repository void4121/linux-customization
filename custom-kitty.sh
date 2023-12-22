#!/bin/bash

#install kitty segment
cd
sudo apt install kitty git zsh curl -y
cd .config/kitty

git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
#create soft link to theme configuration
ln -s ./kitty-themes/themes/ayu_mirage.conf ~/.config/kitty/theme.conf
touch kitty.conf && echo "include ./theme.conf" > kitty.conf


#custom zsh shell
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" & sleep 5

cd
cp .zshrc .zshrc-backup
cp .zshrc ~/

cd
echo "background_opacity 0.95" >> .config/kitty/kitty.conf

cd
mkdir wallpaper
cp /linux-customization/wallpaper/* /wallpaper

mv hyprland.conf  hyprpaper.conf .config/hypr
exit
