require('opts')
require('plugins')

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

vim.cmd('highlight Normal guibg=none')

vim.g.mapleader = ' '

require('maps')
require('completion')

