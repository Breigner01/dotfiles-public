#!/bin/bash

sudo cp -r etc/* /etc
cp KDE/* ~/.config
cp -r shell ~/.config
cp -r terminator ~/.config
cp -r vim/* ~/.config
cp -r yay ~/.config
cp -r zsh ~/.config
cp -r bin ~/.local/
git_signingkey=$(grep "signingkey" ~/.config/git/config)
grep -B 20 "\[pull\]" git/config | head -n -1 > ~/.config/git/config && echo -e "$git_signingkey" >> ~/.config/git/config && grep -A 20 "\[pull\]" git/config >> ~/.config/git/config
