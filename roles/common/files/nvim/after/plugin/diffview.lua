local diffview = require("diffview")

diffview.setup({
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
})

vim.keymap.set("n", "<leader>dc", vim.cmd.DiffviewOpen, { desc = "Diff all changes against index" })
vim.keymap.set("n", "<leader>dh", vim.cmd.DiffviewFileHistory, { desc = "View current branch history" })
vim.keymap.set("n", "<leader>df", "<cmd>DiffviewFileHistory %<cr>", { desc = "View current file history" })
