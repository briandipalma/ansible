-- Exit from terminal insert mode
vim.api.nvim_set_keymap("t", "<C-\\>", "<C-\\><C-n>", {})
-- Easier writing
vim.api.nvim_set_keymap("n", "<leader>s", ":w<CR>", {})
-- Move focused window
vim.api.nvim_set_keymap("n", "<Left>", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<Right>", "<C-w>l", {})
vim.api.nvim_set_keymap("n", "<Up>", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<Down>", "<C-w>j", {})
