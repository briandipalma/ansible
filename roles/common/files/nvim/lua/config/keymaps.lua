local Util = require("lazyvim.util")

-- lazygit
vim.keymap.set("n", "<leader>gg", function()
	Util.float_term({ "lazygit" }, { cwd = Util.get_root(), size = {
		width = 1,
		height = 1,
	} })
end, { desc = "Lazygit (root dir)" })

vim.keymap.set("n", "<leader>gG", function()
	Util.float_term({ "lazygit" }, {
		size = {
			width = 1,
			height = 1,
		},
	})
end, { desc = "Lazygit (cwd)" })
