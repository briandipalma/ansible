local wk = require("which-key")

local show = wk.show

-- Work around for https://github.com/folke/which-key.nvim/issues/273
wk.show = function(keys, opts)
	if vim.bo.filetype == "TelescopePrompt" then
		local map = "<c-r>"
		local key = vim.api.nvim_replace_termcodes(map, true, false, true)

		vim.api.nvim_feedkeys(key, "i", true)
	end

	show(keys, opts)
end

wk.setup({ plugins = { spelling = { enabled = true } } })

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
		j = { ":resize -4<CR>", "Resize down" },
		k = { ":resize +4<CR>", "Resize up" },
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
