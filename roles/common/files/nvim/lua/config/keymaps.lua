local Util = require("lazyvim.util")

local fullScreenSize = { width = 1, height = 1 }

-- lazygit, make it full screen, rest is the same as default
vim.keymap.set("n", "<leader>gg", function()
	Util.float_term({ "lazygit" }, { cwd = Util.get_root(), size = fullScreenSize })
end, { desc = "Lazygit (root dir)" })

vim.keymap.set("n", "<leader>gG", function()
	Util.float_term({ "lazygit" }, { size = fullScreenSize })
end, { desc = "Lazygit (cwd)" })

vim.keymap.set("n", "<leader>fc", function()
	vim.cmd.e(vim.fn.getreg("+"))
end, { desc = "Open file (path taken from clipboard)" })
