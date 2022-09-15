#!/bin/bash

cp /etc/environment etc
cp /etc/pacman.conf etc
cp /etc/grub.d/40_custom etc/grub.d
cp -r /etc/zsh etc
cp /etc/ssh/sshd_config etc/ssh
cp ~/.config/kded5rc KDE
cp ~/.config/kdeglobals KDE
cp ~/.config/plasmarc KDE
cp -r ~/.config/shell .
cp -r ~/.config/terminator .
cp -r ~/.config/nvim vim
rsync -r --exclude "plugged" ~/.config/vim vim/
cp -r ~/.config/yay .
cp ~/.config/zsh/.zshrc ~/.config/zsh/p10k.zsh zsh
cp ~/.local/bin/update bin
cp ~/.local/bin/script bin
grep -B 20 -i "signingkey" ~/.config/git/config | head -n -1 > git/config && grep -A 20 -i "signingkey" ~/.config/git/config | tail -n +2 >> git/config
