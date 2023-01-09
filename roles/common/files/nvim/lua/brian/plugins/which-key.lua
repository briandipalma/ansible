local wk = require("which-key")

wk.setup({ plugins = { spelling = { enabled = true } } })

wk.register({ ["<leader>s"] = { ":up<CR>", "Write updated buffer" } })

wk.register({ ["<leader>d"] = { name = "diff/git" } })
wk.register({ ["<leader>h"] = { name = "git hunks" } })

wk.register({
	["<leader>f"] = {
		name = "find",
		f = { "<cmd>Telescope find_files<cr>", "List files in cwd, respects .gitignore" },
		F = { "<cmd>FileInDirectory<cr>", "List files in specified directory" },
		g = { "<cmd>Telescope grep_string<cr>", "Searches for string under cursor" },
		l = { "<cmd>Telescope live_grep<cr>", "Searches for string and get live results" },
		L = { "<cmd>GrepInDirectory<cr>", "Searches in selected directory for string" },
		b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "List available help tags" },
		o = { "<cmd>Telescope oldfiles<cr>", "List previously open files" },
		c = { "<cmd>Telescope commands<cr>", "List available plugin/user commands" },
		d = { "<cmd>Telescope lsp_document_symbols<cr>", "Lists LSP document symbols in buffer" },
		r = { "<cmd>Telescope lsp_references<cr>", "Lists LSP references for word under cursor" },
		s = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Fuzzy find in current buffer" },
		p = { "<cmd>Telescope resume<cr>", "Resume previous picker" },
		B = { "<cmd>Telescope git_branches<cr>", "Lists all branches with log preview" },
		m = { "<cmd>Telescope git_bcommits<cr>", "Lists buffer's git commits with diff" },
		M = { "<cmd>Telescope git_commits<cr>", "Lists git commits with diff" },
	},
})

wk.register({
	["<leader>t"] = {
		name = "terminal/tab",
		t = { "<cmd>ToggleTerm direction=tab<cr>", "Open tab terminal" },
		h = { '<cmd>execute v:count . "ToggleTerm direction=horizontal"<CR>', "Open horizontal terminal" },
		v = { "<cmd>ToggleTerm direction=vertical<cr>", "Open vertical terminal" },
		f = { "<cmd>ToggleTerm direction=float<cr>", "Open float terminal" },
		c = { "<cmd>tabclose<cr>", "Close tab" },
	},
})

local terminal = require("brian.plugins.toggleterm")

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
		h = { "<cmd>chi<CR>", "Open the quickfix history" },
		j = { ":resize -4<CR>", "Resize down" },
		k = { ":resize +4<CR>", "Resize up" },
	},
})

wk.register({
	["<leader>c"] = {
		name = "config",
		l = { "<cmd>set list!<CR>", "Toggle whitespace characters" },
		i = {
			function()
				require("indent_blankline/commands").toggle()
			end,
			"Toggle indentation guides",
		},
	},
})

wk.register({
	["[q"] = { "<cmd>cprev<CR>", "Previous quickfix entry" },
	["]q"] = { "<cmd>cnext<CR>", "Next quickfix entry" },
	["[l"] = { "<cmd>lprev<CR>", "Previous location list entry" },
	["]l"] = { "<cmd>lnext<CR>", "Next location list entry" },
})

wk.register({ ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "Open file manager" } })

wk.register({ ["<leader>n"] = { "<cmd>NvimTreeFindFile<CR>", "Open file manager to current buffer" } })

wk.register({ ["<leader>i"] = { name = "treesitter" } })
