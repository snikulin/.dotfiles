local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Quickfix mappings
map('n', 'C-j', '<cmd> cprevious<cr>', opts)
map('n', 'C-k', '<cmd> cnext<cr>', opts)
map('n', '<leader>co', '<cmd> copen<cr>', opts)
map('n', '<leader>cc', '<cmd> cclose<cr>', opts)
map('n', '<C-s>', '<cmd> :w<cr>', opts)

