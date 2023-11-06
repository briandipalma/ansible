return {
	"NeogitOrg/neogit",
	dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
	cmd = "Neogit",
	config = true,
	opts = {
		-- Enter insert mode if no commit message
		disable_insert_on_commit = "auto",
		use_per_project_settings = false,
		-- Persist force with lease
		ignored_settings = {},
		popup = {
			kind = "split_above",
		},
	},
	keys = {
		{
			"<leader>gg",
			function()
				local neogit = require("neogit")

				neogit.open()
			end,
			desc = "Neogit",
		},
		{
			"<leader>gc",
			function()
				local neogit = require("neogit")

				neogit.open({})
				neogit.open({ "commit" })
			end,
			desc = "Commit changes",
		},
		{
			"<leader>gs",
			function()
				local neogit = require("neogit")

				neogit.open({})
				neogit.open({ "stash" })
			end,
			desc = "Stashes popup",
		},
		{
			"<leader>gr",
			function()
				local neogit = require("neogit")

				neogit.open({})
				neogit.open({ "rebase" })
			end,
			desc = "Rebase",
		},
		{
			"<leader>gp",
			function()
				local neogit = require("neogit")

				neogit.open({})
				neogit.open({ "push" })
			end,
			desc = "Push changes",
		},
	},
}
