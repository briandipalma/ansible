local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-s>"] = actions.cycle_previewers_next,
				["<C-a>"] = actions.cycle_previewers_prev,
			},
		},
	},
	pickers = {
		git_bcommits = {
			git_command = { "git", "log", "--pretty=oneline", "--follow" },
		},
	},
})

telescope.load_extension("fzf")
