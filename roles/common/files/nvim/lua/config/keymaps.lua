local Util = require("lazyvim.util")

local fullScreenSize = { width = 1, height = 1 }

-- Normal mode mappings --

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

-- Go to the first non-blank character of a line
vim.keymap.set("n", "0", "^")
-- Just in case you need to go to the very beginning of a line
vim.keymap.set("n", "^", "0")

-- Visual mode mappings --

-- Don't replace register value when pasting over text
vim.keymap.set("v", "p", '"_dP')
