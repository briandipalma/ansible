return {
	{
		"nvim-neotest/neotest",
		keys = {
			{
				"<leader>tl",
				function()
					require("neotest").run.run_last()
				end,
				desc = "Run Last Test",
			},
			{
				"<leader>tL",
				function()
					require("neotest").run.run_last({ strategy = "dap" })
				end,
				desc = "Debug Last Test",
			},
		},
		opts = function(_, opts)
			table.insert(opts.adapters, require("neotest-karma"))
		end,
	},
}
