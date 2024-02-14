#!/bin/bash

#software installation
echo "Beginning base installation apps...\n\n"
sleep 2
sudo pacman -Sy kitty git zsh curl hyprpaper otf-font-awesome waybar neovim net-tools neofetch git rofi pavucontrol arandr

### kitty setup
echo "\n\nSetting up Kitty\n"
sleep 2
cd ~/.config/kitty
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
#create soft link to theme configuration
ln -s ./kitty-themes/themes/ayu_mirage.conf ~/.config/kitty/theme.conf
touch kitty.conf && echo "include ./theme.conf" > kitty.conf
echo "background_opacity 0.95" >> ~/.config/kitty/kitty.conf

### ZSH setup
#custom zsh shell
echo "\ncustom zsh shell\n"
sleep 2
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp ~/.zshrc ~/.zshrc-backup
cp ~/linux-customization/.zshrc ~/

### wallpaper setup
echo "\nSetting wallpaper\n"
sleep 2
mkdir ~/wallpaper
cp -rf ~/linux-customization/wallpaper ~/
cp -r ~/linux-customization/hypr/hyprland.conf  ~/linux-customization/hypr/hyprpaper.conf ~/.config/hypr

# hypr config
echo "\Creating hypr backup and updating new config\n"
sleep 2
mkdir ~/.config/hypr_backup 
cp -rf ~/.config/hypr/* ~/.config/hypr_backup
rm -rf ~/.config/hypr/* && cp -r ~/linux-customization/hypr/* ~/.config/hypr/ 

### waybar
echo "\Setting waybar up...\n"
sleep 2
cp -rf ~/linux-customization/waybar ~/.config/


exit
