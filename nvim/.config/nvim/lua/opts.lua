
vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.opt.autoindent = true
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
vim.opt.incsearch=true
vim.opt.scrolloff=8
vim.opt.showmode=false
vim.opt.completeopt='menuone,noinsert,noselect'
vim.opt.colorcolumn='80'
vim.opt.signcolumn='yes'
vim.opt.cmdheight=1
vim.opt.updatetime=50
vim.opt.clipboard='unnamedplus'

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.opt.wildmode='longest,list,full'
vim.opt.wildmenu=true

vim.opt.wildignore:append'*.pyc'
vim.opt.wildignore:append'*_build/*'
vim.opt.wildignore:append'***/coverage/*'
vim.opt.wildignore:append'***/node_modules/*'
vim.opt.wildignore:append'***/android/*'
vim.opt.wildignore:append'***/ios/*'
vim.opt.wildignore:append'***/.git/*'

