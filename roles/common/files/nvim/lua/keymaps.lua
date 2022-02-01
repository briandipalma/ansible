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

wk.register({
	["<leader>h"] = {
		name = "+git hunk",
		s = { "<cmd>Gitsigns stage_hunk<CR>", "Stage hunk" },
		r = { "<cmd>Gitsigns reset_hunk<CR>", "Reset hunk" },
		S = { "<cmd>Gitsigns stage_buffer<CR>", "Stage buffer" },
		u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Undo stage hunk" },
		R = { "<cmd>Gitsigns reset_buffer<CR>", "Reset buffer" },
		p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview hunk" },
		b = { "<cmd>lua require'gitsigns'.blame_line{full=true}<CR>", "Blame line popup" },
		l = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Toggle line blame" },
		d = { "<cmd>Gitsigns diffthis<CR>", "Diff this file against index" },
		D = { "<cmd>lua require'gitsigns'.diffthis('~1')<CR>", "Diff this file against last commit" },
		e = { "<cmd>Gitsigns toggle_deleted<CR>", "Toggle deleted" },
		j = { "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", "Next hunk", expr = true },
		k = { "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", "Previous hunk", expr = true },
	},
})

wk.register({
	["]c"] = { "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", "Next hunk", expr = true },
	["[c"] = { "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", "Previous hunk", expr = true },
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
