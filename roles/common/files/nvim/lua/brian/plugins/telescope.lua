local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		layout_config = { height = 200, width = 500 },
		mappings = {
			i = {
				["<C-s>"] = actions.cycle_previewers_next,
				["<C-a>"] = actions.cycle_previewers_prev,
			},
		},
	},
})

telescope.load_extension("fzf")
