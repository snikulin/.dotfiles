vim.opt.tabstop=2 
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.exrc=true
vim.opt.relativenumber=true
vim.opt.hlsearch=false
vim.opt.hidden=true
vim.opt.errorbells=false
vim.opt.nu=true
vim.opt.wrap=false
vim.opt.smartcase=true
vim.opt.swapfile=false
vim.opt.backup=false
vim.opt.undodir='~/.local/cache/vim'
vim.opt.undofile=true
vim.opt.incsearch=true
vim.opt.termguicolors=true
vim.opt.scrolloff=8
vim.opt.showmode=false
vim.opt.completeopt='menuone,noinsert,noselect'
vim.opt.colorcolumn='80'
vim.opt.signcolumn='yes'
vim.opt.cmdheight=1
vim.opt.updatetime=50
vim.opt.clipboard='unnamedplus'

vim.opt.wildmode='longest,list,full'
vim.opt.wildmenu=true

vim.opt.wildignore:append'*.pyc'
vim.opt.wildignore:append'*_build/*'
vim.opt.wildignore:append'***/coverage/*'
vim.opt.wildignore:append'***/node_modules/*'
vim.opt.wildignore:append'***/android/*'
vim.opt.wildignore:append'***/ios/*'
vim.opt.wildignore:append'***/.git/*'

