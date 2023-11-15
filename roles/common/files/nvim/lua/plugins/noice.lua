local border = {
	{ "🭽", "FloatBorder" },
	{ "▔", "FloatBorder" },
	{ "🭾", "FloatBorder" },
	{ "▕", "FloatBorder" },
	{ "🭿", "FloatBorder" },
	{ "▁", "FloatBorder" },
	{ "🭼", "FloatBorder" },
	{ "▏", "FloatBorder" },
}

return {
	"folke/noice.nvim",
	opts = {
		presets = {
			bottom_search = false,
			lsp_doc_border = {
				views = {
					hover = {
						border = {
							style = border,
						},
					},
				},
			},
		},
	},
}
