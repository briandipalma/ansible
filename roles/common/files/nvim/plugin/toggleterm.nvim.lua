require("toggleterm").setup({
	open_mapping = [[<leader>tt]],
	shade_terminals = false,
	direction = "tab",
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	float_opts = {
		-- Fill the entire screen
		width = 400,
		height = 200,
	},
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
