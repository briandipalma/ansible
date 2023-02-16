return {
	"princejoogie/dir-telescope.nvim",
	config = true,
	dependencies = "nvim-telescope/telescope.nvim",
	keys = {
		{ "<leader>fD", "<cmd>FileInDirectory<cr>", desc = "Find Files (user selected dir)" },
		{ "<leader>sD", "<cmd>GrepInDirectory<cr>", desc = "Grep (user selected dir)" },
	},
}
