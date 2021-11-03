require("nvim-tree").setup({
	-- Enable netrw
	disable_netrw = false,
	hijack_netrw = false,
	-- show lsp diagnostics in the signcolumn
	diagnostics = {
		enable = true,
	},
	view = {
		-- width of the window in columns
		width = 40,
	},
})

-- Key mappings
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFindFile<CR>", {})
