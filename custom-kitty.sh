#!/bin/bash

sudo apt install kitty git zsh -y
echo "PID: $process_id"
wait $process_id
echo "Exit status: $?"
kitty

cd /.config/kitty

git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf

touch kitty.conf < echo "include ./theme.conf"

exit
