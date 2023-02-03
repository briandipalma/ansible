return {
	"folke/which-key.nvim",
	opts = function()
		local which_key = require("which-key")

		which_key.register({ ["<leader>d"] = { name = "diff" } })
	end,
}
