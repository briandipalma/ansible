return {
	"NeogitOrg/neogit",
	dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
	cmd = "Neogit",
	config = true,
	opts = {
		use_per_project_settings = false,
		ignored_settings = {},
		popup = {
			kind = "split_above",
		},
		integrations = {
			diffview = true,
		},
	},
	keys = {
		{
			"<leader>gc",
			function()
				local neogit = require("neogit")

				neogit.open({})
				neogit.open({ "commit" })
			end,
			desc = "Create new commit",
		},
		{
			"<leader>gs",
			function()
				local neogit = require("neogit")

				neogit.open({})
				neogit.open({ "stash" })
			end,
			desc = "Inspect stashes",
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
