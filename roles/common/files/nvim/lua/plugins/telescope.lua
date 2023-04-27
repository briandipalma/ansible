return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			layout_config = { height = 400, width = 400, vertical = { preview_height = 0.65 } },
			layout_strategy = "vertical",
			mappings = {
				i = {
					["<a-n>"] = require("telescope.actions.layout").cycle_layout_next,
					["<a-p>"] = require("telescope.actions.layout").cycle_layout_prev,
				},
			},
		},
		pickers = {
			lsp_references = { fname_width = 100 },
		},
	},
}
