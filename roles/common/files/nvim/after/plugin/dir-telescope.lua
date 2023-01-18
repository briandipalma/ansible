local ok, dir_telescope = pcall(require, "dir-telescope")

if not ok then
	return
end

dir_telescope.setup()

vim.keymap.set("n", "<leader>fF", vim.cmd.FileInDirectory, { desc = "List files in specified directory" })
vim.keymap.set("n", "<leader>fL", vim.cmd.GrepInDirectory, { desc = "Searches in selected directory for string" })
