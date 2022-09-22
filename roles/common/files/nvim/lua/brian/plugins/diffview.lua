local diffview = require("diffview")

diffview.setup({
	file_history_panel = {
		log_options = {
			single_file = {
				diff_merges = "off",
			},
		},
	},
	default_args = {
		DiffviewFileHistory = { "--follow" },
	},
})
