local wk = require("which-key")

wk.register({
	["<leader>f"] = {
		name = "+find",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { "<cmd>Telescope grep_string<cr>", "Find String Under Cursor" },
		b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
		l = { "<cmd>Telescope live_grep<cr>", "Find Inputted String" },
		e = { "<cmd>Telescope file_browser<cr>", "Find Using File Browser" },
		h = { "<cmd>Telescope help_tags<cr>", "Find Help Tag" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
	},
})

-- Exit from terminal insert mode
vim.api.nvim_set_keymap("t", "<C-\\>", "<C-\\><C-n>", {})
-- Easier writing
vim.api.nvim_set_keymap("n", "<leader>s", ":w<CR>", {})
-- Move focused window
vim.api.nvim_set_keymap("n", "<Left>", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<Right>", "<C-w>l", {})
vim.api.nvim_set_keymap("n", "<Up>", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<Down>", "<C-w>j", {})
-- https://github.com/neovim/neovim/issues/16416 workaround
vim.api.nvim_set_keymap("n", "<C-c>", "<Esc>", {})
