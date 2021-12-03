require("toggleterm").setup({
	insert_mappings = false,
	open_mapping = [[<leader>tt]],
	shade_terminals = false,
	direction = "tab",
})

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua require('terminal').lazygit_toggle()<CR>", opts)
vim.api.nvim_set_keymap("t", "<leader>tt", '<cmd>execute v:count . "ToggleTerm"<CR>', opts)
