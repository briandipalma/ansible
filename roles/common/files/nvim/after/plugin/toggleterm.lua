local ok, toggleterm = pcall(require, "toggleterm")

if not ok then
	return
end

local Terminal = require("toggleterm.terminal").Terminal

toggleterm.setup()

local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	float_opts = {
		-- Fill the entire screen
		width = 400,
		height = 200,
	},
})

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<cr>", { desc = "Open tab terminal" })
vim.keymap.set(
	"n",
	"<leader>th",
	'<cmd>execute v:count . "ToggleTerm direction=horizontal"<CR>',
	{ desc = "Open horizontal terminal" }
)
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Open vertical terminal" })
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Open float terminal" })
vim.keymap.set("n", "<leader>g", function()
	lazygit:toggle()
end, { desc = "Open lazygit" })
