return {
	"SmiteshP/nvim-navbuddy",
	dependencies = {
		"neovim/nvim-lspconfig",
		"SmiteshP/nvim-navic",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	keys = { { "<leader>cs", "<cmd>Navbuddy<cr>", desc = "Navigate Symbols" } },
	opts = { lsp = { auto_attach = true } },
}
