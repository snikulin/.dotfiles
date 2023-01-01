#!/bin/bash
stow --no-folding zsh
stow --no-folding tmux
stow --no-folding nvim
stow --no-folding scripts
stow --no-folding fortune
stow --no-folding alacritty

if [[ `uname` = "Darwin" ]]; then
  stow --no-folding macos
fi
if [[ `uname` = "Linux" ]]; then
  stow --no-folding linux
fi
