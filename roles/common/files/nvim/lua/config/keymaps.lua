local Util = require("lazyvim.util")

local fullScreenSize = { width = 1, height = 1 }

-- lazygit, make it full screen, rest is the same as default
vim.keymap.set("n", "<leader>gg", function()
	Util.float_term({ "lazygit" }, { cwd = Util.get_root(), size = fullScreenSize })
end, { desc = "Lazygit (root dir)" })

vim.keymap.set("n", "<leader>gG", function()
	Util.float_term({ "lazygit" }, { size = fullScreenSize })
end, { desc = "Lazygit (cwd)" })

if Util.has("trouble.nvim") then
	vim.keymap.set("n", "[q", function()
		require("trouble").previous({ skip_groups = true, jump = true })
	end, { desc = "Previous trouble item" })
	vim.keymap.set("n", "]q", function()
		require("trouble").next({ skip_groups = true, jump = true })
	end, { desc = "Next trouble item" })
else
	vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
	vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })
end
