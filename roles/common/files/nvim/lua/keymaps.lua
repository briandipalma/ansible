-- Open a terminal, in a horizontal row at the bottom
vim.api.nvim_set_keymap('n', '<leader>tt', '<C-w>s<C-w>J:ter<CR>i', {})
-- Hide the current terminal
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n><C-w>c', {})
-- Easier writing
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {})
