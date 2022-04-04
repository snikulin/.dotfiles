# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP


# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Useful Functions
source ~/.config/zsh/zsh-functions

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-prompt"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

[ -f ~/.config/zsh/.local.env ] && source ~/.config/zsh/.local.env

source ~/.profile
source ~/.aliases

bindkey -s "^f" "tmux-sessionizer\n"
fortune ~/.local/share/fortune/quotes


# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/nik/yandex-cloud/path.bash.inc' ]; then source '/Users/nik/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/nik/yandex-cloud/completion.zsh.inc' ]; then source '/Users/nik/yandex-cloud/completion.zsh.inc'; fi

