#!/bin/bash
ln -sf ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.config
ln -sf ~/.dotfiles/.scripts -t ~/
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.psqlrc ~/.psqlrc
ln -sf ~/.dotfiles/.config/i3 -t ~/.config
ln -sf ~/.dotfiles/.config/i3blocks -t ~/.config
ln -sf ~/.dotfiles/.config/polybar -t ~/.config
ln -sf ~/.dotfiles/.config/rofi -t ~/.config

if [[ `uname` = "Linux" ]]; then
  dconf write /org/gnome/desktop/input-sources/xkb-options "['grp_led:scroll']"
fi
