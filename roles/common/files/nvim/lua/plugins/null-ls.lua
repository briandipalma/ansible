return {
	"jose-elias-alvarez/null-ls.nvim",
	opts = function()
		local null_ls = require("null-ls")

		return {
			sources = {
				null_ls.builtins.diagnostics.fish,
				null_ls.builtins.diagnostics.yamllint,
				null_ls.builtins.formatting.fish_indent,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.rustfmt,
				null_ls.builtins.formatting.stylua,
			},
		}
	end,
}
