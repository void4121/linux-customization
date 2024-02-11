# linux-customization for arch

- Desktop setup for Nvidia drivers require following the documentation of:
https://github.ink/korvahannu/arch-nvidia-drivers-installation-guide?tab=readme-ov-file

This repository contains info of how my unix system is setup

apps:
WM: Awesome
https://awesomewm.org/
can be install using apt

launcher: Rofi
https://github.com/davatorium/rofi

term: Kitty
https://github.com/kovidgoyal/kitty
https://github.com/dexpota/kitty-themes
can be install using apt

shell: ZSH
https://ohmyz.sh/


to do list:
- configure AUR, set MAKEFLAGS to "-j$(nproc)"
- install Yay helper:
  - https://github.com/Jguer/yay?tab=readme-ov-file
  - git clone https://aur.archlinux.org/yay.git  
- add base-devel to pacman install list
- add virt install package(s) to pacman list
- update grub for windows dual boot
- add configuration for Windows/other OS detection: https://bbs.archlinux.org/viewtopic.php?id=271879
  - install os prober via yay
  - uncomment/add "GRUB_DISABLE_OS_PROBER=false" in /etc/default/grub
  - run os-prober as root
  - lastly, sudo grub-mkconfig -o /boot/grub/grub.cfg