require("nvim-tree").setup({
	view = {
		-- width of the window in columns
		width = 50,
	},
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, { desc = "Open file manager" })
vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeFindFile, { desc = "Open file manager to current buffer" })
