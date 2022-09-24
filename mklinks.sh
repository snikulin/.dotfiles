#!/bin/bash
stow zsh
stow tmux
stow nvim
stow scripts
stow fortune
stow alacritty

if [[ `uname` = "Darwin" ]]; then
  stow macos
fi
if [[ `uname` = "Linux" ]]; then
  stow linux
  dconf write /org/gnome/desktop/input-sources/xkb-options "['grp_led:scroll']"
fi
