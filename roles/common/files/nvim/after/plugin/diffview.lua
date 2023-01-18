local ok, diffview = pcall(require, "diffview")

if not ok then
	return
end

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

vim.keymap.set("n", "<leader>dh", vim.cmd.DiffviewFileHistory, { desc = "View current branch history" })
vim.keymap.set("n", "<leader>df", "<cmd>DiffviewFileHistory %<cr>", { desc = "View current file history" })
