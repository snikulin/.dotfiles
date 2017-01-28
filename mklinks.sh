#!/bin/bash
ln -sf ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf

if [[ `uname` = "Linux" ]]; then
  dconf write /org/gnome/desktop/input-sources/xkb-options "['grp_led:scroll',
  'caps:swapescape']"
fi
