local wk = require("which-key")

wk.setup({ plugins = { spelling = { enabled = true } } })

wk.register({ ["<leader>d"] = { name = "diff/git" } })
wk.register({ ["<leader>h"] = { name = "git hunks" } })
wk.register({ ["<leader>i"] = { name = "treesitter" } })
wk.register({ ["<leader>f"] = { name = "find" } })
wk.register({ ["<leader>t"] = { name = "terminal/tab" } })
wk.register({ ["<leader>w"] = { name = "window" } })
wk.register({ ["<leader>c"] = { name = "config" } })
wk.register({ ["<leader>l"] = { name = "lsp" } })
