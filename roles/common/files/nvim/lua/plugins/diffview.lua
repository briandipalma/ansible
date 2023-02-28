local width = math.max(35, vim.o.columns - 215)

return {
	"sindrets/diffview.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", desc = "View current file history" },
		{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "View current branch history" },
		{
			"<leader>dr",
			"<cmd>DiffviewOpen origin/master...HEAD<cr>",
			desc = "Review current branch versus remote master",
		},
	},
	opts = {
		file_panel = {
			win_config = {
				width = width,
			},
		},
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
