local wk = require("which-key")

wk.setup({ plugins = { spelling = { enabled = true } } })

wk.register({ ["<leader>s"] = { ":up<CR>", "Write updated buffer" } })
wk.register({ ["<leader>d"] = { name = "diff/git" } })
wk.register({ ["<leader>h"] = { name = "git hunks" } })
wk.register({ ["<leader>i"] = { name = "treesitter" } })

wk.register({
	["<leader>f"] = {
		name = "find",
		F = { "<cmd>FileInDirectory<cr>", "List files in specified directory" },
		L = { "<cmd>GrepInDirectory<cr>", "Searches in selected directory for string" },
	},
})

wk.register({
	["<leader>t"] = {
		name = "terminal/tab",
		c = { "<cmd>tabclose<cr>", "Close tab" },
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
	},
})

wk.register({
	["[q"] = { "<cmd>cprev<CR>", "Previous quickfix entry" },
	["]q"] = { "<cmd>cnext<CR>", "Next quickfix entry" },
	["[l"] = { "<cmd>lprev<CR>", "Previous location list entry" },
	["]l"] = { "<cmd>lnext<CR>", "Next location list entry" },
})
