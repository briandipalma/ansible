return {
	"folke/zen-mode.nvim",
	cmd = "ZenMode",
	opts = {
		window = { options = { colorcolumn = "" } },
		plugins = { kitty = { enabled = true, font = "+2" } },
	},
	keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
}
