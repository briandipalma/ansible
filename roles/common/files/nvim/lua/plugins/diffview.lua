return {
	"sindrets/diffview.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "View current branch history" },
		{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", desc = "View current file history" },
	},
	opts = {
		file_history_panel = {
			log_options = {
				git = {
					single_file = {
						diff_merges = "off",
					},
				},
			},
		},
		default_args = {
			DiffviewFileHistory = { "--follow" },
		},
	},
}
