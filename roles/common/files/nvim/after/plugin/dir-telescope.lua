require("dir-telescope").setup()

vim.keymap.set("n", "<leader>fF", vim.cmd.FileInDirectory, { desc = "List files in specified directory" })
vim.keymap.set("n", "<leader>fL", vim.cmd.GrepInDirectory, { desc = "Searches in selected directory for string" })
