return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'kyazdani42/nvim-web-devicons'
  use {
    'neovim/nvim-lspconfig', 
    'williamboman/nvim-lsp-installer'
  }
  use 'nvim-lua/completion-nvim'
  use 'ray-x/lsp_signature.nvim'
  use 'mfussenegger/nvim-dap'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tpope/vim-fugitive'
  use 'vim-utils/vim-man'
  use 'hrsh7th/nvim-compe'
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-surround'
  use 'numToStr/Comment.nvim'
  use 'TimUntersberger/neogit'
  use 'sindrets/diffview.nvim'
  use 'nvim-orgmode/orgmode'
  use 'gruvbox-community/gruvbox'
  use 'colepeters/spacemacs-theme.vim'
  use 'phanviet/vim-monokai-pro'
  use 'flazz/vim-colorschemes'
  use 'chriskempson/base16-vim'
  use 'github/copilot.vim'
end)
