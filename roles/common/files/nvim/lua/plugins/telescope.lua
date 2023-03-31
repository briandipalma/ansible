return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			layout_config = { height = 0.95, width = 0.95, vertical = { preview_height = 0.65 } },
			layout_strategy = "vertical",
			mappings = {
				i = {
					["<a-n>"] = require("telescope.actions.layout").cycle_layout_next,
					["<a-p>"] = require("telescope.actions.layout").cycle_layout_prev,
				},
			},
		},
	},
}
