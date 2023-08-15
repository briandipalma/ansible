local file_panel_win_config = function()
	local height = math.max(10, vim.o.lines * 0.25)

	return { height = height, position = "top" }
end

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
		view = {
			default = { winbar_info = true },
			file_history = { winbar_info = true },
			merge_tool = { layout = "diff3_mixed" },
		},
		file_panel = { listing_style = "list", win_config = file_panel_win_config },
		file_history_panel = { win_config = file_panel_win_config },
		default_args = {
			DiffviewFileHistory = { "--follow", "--no-merges" },
			DiffviewOpen = { "--imply-local" },
		},
		hooks = {
			diff_buf_read = function(bufnr)
				-- Change local options in diff buffers
				local winid = vim.fn.bufwinid(bufnr)

				vim.api.nvim_set_option_value("relativenumber", false, { scope = "local", win = winid })
			end,
			view_leave = function()
				-- Reset options
				vim.opt.relativenumber = true
			end,
		},
		keymaps = { file_panel = { { "n", "q", "<cmd>tabclose<cr>", { desc = "Quit Diffview" } } } },
	},
}
