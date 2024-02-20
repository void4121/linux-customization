# linux-customization for arch

- Desktop setup for Nvidia drivers require following the documentation of:
https://github.ink/korvahannu/arch-nvidia-drivers-installation-guide?tab=readme-ov-file

This repository contains info of how my unix system is setup

apps:
WM: Hyprland
https://awesomewm.org/
can be install using apt

Bar: Wayland 
https://github.com/Alexays/Waybar

launcher: Rofi
https://github.com/davatorium/rofi

term: Kitty
https://github.com/kovidgoyal/kitty
https://github.com/dexpota/kitty-themes
can be install using apt

shell: ZSH
https://ohmyz.sh/


to do list:
- add configuration for Windows/other OS detection: https://bbs.archlinux.org/viewtopic.php?id=271879
  - uncomment/add "GRUB_DISABLE_OS_PROBER=false" in /etc/default/grub
  - update timeout timer from 5 to 100
  - run os-prober as root
  - lastly, sudo grub-mkconfig -o /boot/grub/grub.cfg
