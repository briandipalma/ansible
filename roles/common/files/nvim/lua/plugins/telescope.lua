return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			layout_config = { height = 0.95, width = 0.95 },
			mappings = {
				i = {
					["<a-n>"] = require("telescope.actions.layout").cycle_layout_next,
					["<a-p>"] = require("telescope.actions.layout").cycle_layout_prev,
				},
			},
		},
	},
}
