local wk = require("which-key")

local keymap = vim.keymap.set

-- Map the leader key to space, more convenient than default `\`
vim.g.mapleader = " "
-- Buffer local mappings or operations local to your current line?
vim.g.maplocalleader = "\\"

--
-- Terminal mode mappings
--

-- Quicker exit from terminal insert mode
keymap("t", "<C-\\>", "<C-\\><C-n>")
keymap("t", "<A-k>", "<C-\\><C-n><C-w>k")

--
-- Insert mode mappings
--

-- Paste from clipboard, use C-q instead of C-v to insert literal text
keymap("i", "<C-v>", "<C-r>+")

--
-- Normal mode mappings
--

-- Go to the first non-blank character of a line
keymap("n", "0", "^")
-- Just in case you need to go to the very beginning of a line
keymap("n", "^", "0")
-- Move focused window
keymap("n", "<A-h>", "<C-w>h")
keymap("n", "<A-j>", "<C-w>j")
keymap("n", "<A-k>", "<C-w>k")
keymap("n", "<A-l>", "<C-w>l")
-- https://github.com/neovim/neovim/issues/16416 workaround
keymap("n", "<C-c>", "<Esc>")

wk.register({ ["<leader>s"] = { ":w<CR>", "Write file" } })

wk.register({
	["<leader>f"] = {
		name = "find",
		f = { "<cmd>Telescope find_files<cr>", "List files in cwd, respects .gitignore" },
		g = { "<cmd>Telescope grep_string<cr>", "Searches for string under cursor" },
		l = { "<cmd>Telescope live_grep<cr>", "Searches for string and get live results" },
		b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "List available help tags" },
		o = { "<cmd>Telescope oldfiles<cr>", "List previously open files" },
		c = { "<cmd>Telescope commands<cr>", "List available plugin/user commands" },
		d = { "<cmd>Telescope lsp_document_symbols<cr>", "Lists LSP document symbols in buffer" },
		r = { "<cmd>Telescope lsp_references<cr>", "Lists LSP references for word under cursor" },
		m = { "<cmd>Telescope git_bcommits<cr>", "Lists buffer's git commits with diff" },
	},
})

local nextGitHunk = { "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", "Next git hunk", expr = true }
local prevGitHunk = { "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", "Previous git hunk", expr = true }

wk.register({
	["<leader>h"] = {
		name = "git",
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
		j = nextGitHunk,
		k = prevGitHunk,
	},
})

wk.register({
	["<leader>t"] = {
		name = "terminal",
		t = { "<cmd>ToggleTerm direction=tab<cr>", "Open tab terminal" },
		h = { '<cmd>execute v:count . "ToggleTerm direction=horizontal"<CR>', "Open horizontal terminal" },
		v = { "<cmd>ToggleTerm direction=vertical<cr>", "Open vertical terminal" },
		f = { "<cmd>ToggleTerm direction=float<cr>", "Open float terminal" },
	},
})

local terminal = require("terminal")

wk.register({
	["<leader>g"] = {
		function()
			terminal.lazygit_toggle()
		end,
		"Open lazygit",
	},
})

wk.register({
	["<leader>w"] = {
		name = "window",
		q = { "<cmd>copen<CR><C-w>J", "Open the quickfix window" },
	},
})

wk.register({
	["[c"] = prevGitHunk,
	["]c"] = nextGitHunk,
	["[q"] = { "<cmd>cprev<CR>", "Previous quickfix entry" },
	["]q"] = { "<cmd>cnext<CR>", "Next quickfix entry" },
	["[l"] = { "<cmd>lprev<CR>", "Previous location list entry" },
	["]l"] = { "<cmd>lnext<CR>", "Next location list entry" },
})
