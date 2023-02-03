return {
	"princejoogie/dir-telescope.nvim",
	config = true,
	dependencies = "nvim-telescope/telescope.nvim",
	keys = {
		{ "<leader>fD", "<cmd>FileInDirectory<cr>", desc = "List files in specified directory" },
		{ "<leader>sD", "<cmd>GrepInDirectory<cr>", desc = "Searches in selected directory for string" },
	},
}
