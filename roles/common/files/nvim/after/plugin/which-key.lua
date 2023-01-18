local ok, which_key = pcall(require, "which-key")

if not ok then
	return
end

which_key.setup({ plugins = { spelling = { enabled = true } } })

which_key.register({ ["<leader>d"] = { name = "diff/git" } })
which_key.register({ ["<leader>h"] = { name = "git hunks" } })
which_key.register({ ["<leader>i"] = { name = "treesitter" } })
which_key.register({ ["<leader>f"] = { name = "find" } })
which_key.register({ ["<leader>t"] = { name = "terminal/tab" } })
which_key.register({ ["<leader>w"] = { name = "window" } })
which_key.register({ ["<leader>c"] = { name = "config" } })
which_key.register({ ["<leader>l"] = { name = "lsp" } })
