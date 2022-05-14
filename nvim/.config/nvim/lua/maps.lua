local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Quickfix mappings
map('n', 'C-j', '<cmd> cprevious<cr>', opts)
map('n', 'C-k', '<cmd> cnext<cr>', opts)
map('n', '<leader>co', '<cmd> copen<cr>', opts)
map('n', '<leader>cc', '<cmd> cclose<cr>', opts)

-- Telescope mappings
map('n', '<C-p>', '<cmd> :Telescope git_files<cr>', opts)
map('n', '<leader>ff', '<cmd> :Telescope find_files<cr>', opts)
map('n', '<leader>fb', '<cmd> :Telescope file_browser<cr>', opts)
map('n', '<leader>fg', '<cmd> :Telescope live_grep<cr>', opts)
map('n', '<C-x>b', '<cmd> :Telescope buffers<cr>', opts)
map('n', '<C-x>h', '<cmd> :Telescope help_tags<cr>', opts)
map('n', '<leader>gs', '<cmd> :Telescope git_status<cr>', opts)
map('n', '<leader>ca', '<cmd> :Telescope lsp_code_actions<cr>', opts)
