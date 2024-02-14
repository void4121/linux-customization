#!/bin/bash

echo "Beginning Yay Install\n\n\n"  

sudo pacman -S --needed git basedevel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Updating yay"
sleep 2

yay -Y --gendb
yay -Syu --devel
yay -Y --devel --save
yay -Syu
