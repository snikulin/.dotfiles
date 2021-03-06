" vim: set foldmethod=marker:

" {{{ Vundle plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-bundler'
Plugin 'godlygeek/tabular'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'keith/rspec.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mileszs/ack.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tpope/vim-obsession'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdcommenter'
Plugin 'potatoesmaster/i3-vim-syntax'
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}

" {{{ General settings
runtime macros/matchit.vim
set autoindent
set updatetime=250
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
set nojoinspaces        " Use one space, not two, after punctuation.
set number              " show line numbers
set relativenumber
set numberwidth=5
set backspace=indent,eol,start
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set hlsearch            " highlight all matches
set ignorecase          " case insensitive search
set smartcase           " smart case sensitivity
set background=dark
set laststatus=2        " always show status line
set noswapfile          " do not create swap file
set textwidth=80
set colorcolumn=+1
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set splitbelow          " Open new split panes to right and bottom
set splitright
set cursorline          " Highlighting cursor line
set cursorcolumn          " Highlighting cursor line
colorscheme jellybeans
syntax enable           " turn on syntax highlighting
command! MakeTags !ctags -R .
" }}}

" {{{ GUI config
let s:uname = system("uname -s")
if s:uname == "Darwin\n"
  set gfn=Ubuntu\ Mono\ derivative\ Powerline:h18
else
  set gfn=Ubuntu\ Mono\ 16 " font for gui
endif

" settings to remove toolbar in GVIM
set go-=T
set go-=m
set go-=r

set bo=all " do not beep

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" }}}

" {{{ Use The Silver Searcher
if executable('ag')
  " Use Ag for Ack searcher
  let g:ackprg = 'ag --vimgrep'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif
" }}}

" {{{ Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_theme='powerlineish'
let g:airline#extensions#syntastic#enabled = 1
set ttimeoutlen=10 " without it there are timeout when leaving insert mode
set noshowmode     " vim-airline already show mode
" }}}

" {{{ Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_eruby_ruby_quiet_messages =
      \ {"regex": "possibly useless use of a variable in void context"}
" }}}

" {{{ UltiSnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
" }}}

" {{{ Python plugins
if s:uname != "Darwin\n"
  let g:python_host_prog  = '/usr/bin/python'
  let g:python3_host_prog = '/usr/bin/python3'
endif
" }}}

" {{{ Emmet config
let g:user_emmet_mode='a' " enable all function in all mode
" }}}

" {{{ FZF config
" preview by coderay
let g:fzf_files_options = '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
" }}}

" {{{ Key mappings
let mapleader = "\<Space>"
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Disable arrow keys navigation
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <C-X> :bdelete<CR>
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <C-s> :write<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <Leader>w mzgg=G`z:write<CR>
nnoremap <Leader>n :tabnew<CR>
nnoremap <Leader>h :nohlsearch<CR>

" Use Fuzzy search for files
map <C-p> :Files<CR>

" }}}

" {{{ Custom commands
command Q quit
" }}}

" {{{ Tmux integration
if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif
" }}}
