#!/bin/bash
ln -sf ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.profile ~/.profile
ln -sf ~/.dotfiles/.inputrc ~/.inputrc
ln -sf ~/.dotfiles/.Xdefaults ~/.Xdefaults
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.psqlrc ~/.psqlrc
ln -sf ~/.dotfiles/.emoji ~/.emoji
mkdir -p ~/.config
ln -sf ~/.dotfiles/.scripts -t ~/
ln -sf ~/.dotfiles/.calcurse -t ~/
ln -sf ~/.dotfiles/.icons -t ~/
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -sf ~/.dotfiles/.config/compton.conf ~/.config/compton.conf
ln -sf ~/.dotfiles/.config/mimeapps.list ~/.config/mimeapps.list
ln -sf ~/.dotfiles/.config/dunst -t ~/.config
ln -sf ~/.dotfiles/.config/feh -t ~/.config
ln -sf ~/.dotfiles/.config/gtk-3.0 -t ~/.config
ln -sf ~/.dotfiles/.config/i3 -t ~/.config
ln -sf ~/.dotfiles/.config/i3blocks -t ~/.config
ln -sf ~/.dotfiles/.config/mpd -t ~/.config
ln -sf ~/.dotfiles/.config/mpv -t ~/.config
ln -sf ~/.dotfiles/.config/ncmpcpp -t ~/.config
ln -sf ~/.dotfiles/.config/newsboat -t ~/.config
ln -sf ~/.dotfiles/.config/polybar -t ~/.config
ln -sf ~/.dotfiles/.config/rofi -t ~/.config
ln -sf ~/.dotfiles/.config/zathura -t ~/.config
ln -sf ~/.dotfiles/.config/ranger -t ~/.config

if [[ `uname` = "Linux" ]]; then
  dconf write /org/gnome/desktop/input-sources/xkb-options "['grp_led:scroll']"
fi
