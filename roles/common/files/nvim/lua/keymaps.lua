-- Open a terminal, in a horizontal row at the bottom
vim.api.nvim_set_keymap("n", "<leader>tt", "<C-w>s<C-w>J:ter<CR>i", {})
-- Hide the current terminal
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n><C-w>c", {})
-- Easier writing
vim.api.nvim_set_keymap("n", "<leader>s", ":w<CR>", {})
-- Move focused window
vim.api.nvim_set_keymap("n", "<Left>", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<Right>", "<C-w>l", {})
vim.api.nvim_set_keymap("n", "<Up>", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<Down>", "<C-w>j", {})
