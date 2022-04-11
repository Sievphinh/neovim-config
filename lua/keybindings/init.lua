vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
-- for moving between different splits you can use ch- c-j c-l
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- makes indentation better
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})
-- For neovim tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})


