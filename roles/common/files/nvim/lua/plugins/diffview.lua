local file_panel_win_config = { height = 28, position = "top" }

return {
	"sindrets/diffview.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", desc = "View current file history" },
		{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "View current branch history" },
		{
			"<leader>dv",
			"V:'<,'>DiffviewFileHistory -f<CR>",
			mode = "v",
			desc = "View current visual selection history",
		},
		{ "<leader>dd", "<cmd>DiffviewOpen<cr>", desc = "Review git working directory/index" },
		{
			"<leader>dr",
			"<cmd>DiffviewOpen origin/HEAD...HEAD<cr>",
			desc = "Review current branch versus remote HEAD",
		},
	},
	opts = {
		file_panel = { listing_style = "list", win_config = file_panel_win_config },
		file_history_panel = { win_config = file_panel_win_config },
		default_args = {
			DiffviewFileHistory = { "--follow", "--no-merges" },
			DiffviewOpen = { "--imply-local" },
		},
		hooks = {
			diff_buf_read = function()
				-- Change local options in diff buffers
				vim.opt_local.relativenumber = false
			end,
		},
	},
}
