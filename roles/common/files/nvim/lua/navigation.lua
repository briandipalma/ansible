-- Center the cursor when navigating
local opts = { noremap=true, silent=true }

vim.api.nvim_set_keymap('n', '{', '{zz', opts)
vim.api.nvim_set_keymap('n', '}', '}zz', opts)
vim.api.nvim_set_keymap('n', 'n', 'nzz', opts)
vim.api.nvim_set_keymap('n', 'N', 'Nzz', opts)
vim.api.nvim_set_keymap('n', '<C-o>', '<C-o>zz', opts)
vim.api.nvim_set_keymap('n', '<C-i>', '<C-i>zz', opts)
vim.api.nvim_set_keymap('n', 'H', 'Hzz', opts)
vim.api.nvim_set_keymap('n', 'L', 'Lzz', opts)
