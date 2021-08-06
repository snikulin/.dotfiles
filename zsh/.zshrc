export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gentoo"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

source $ZSH/oh-my-zsh.sh

[ -f ~/.config/zsh/.local.env ] && source ~/.config/zsh/.local.env

source ~/.profile
source ~/.aliases

fortune ~/.local/share/fortune/quotes

