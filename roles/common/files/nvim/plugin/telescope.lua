-- Key mappings
vim.api.nvim_set_keymap("n", "<leader>o", ":Telescope find_files<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>f", ":Telescope live_grep<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>b", ":Telescope buffers<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>hh", ":Telescope help_tags<CR>", {})
