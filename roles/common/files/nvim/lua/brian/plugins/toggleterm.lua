local toggleterm = require("toggleterm")
local Terminal = require("toggleterm.terminal").Terminal

toggleterm.setup()

local M = {}

local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	float_opts = {
		-- Fill the entire screen
		width = 400,
		height = 200,
	},
})

function M.lazygit_toggle()
	lazygit:toggle()
end

return M
