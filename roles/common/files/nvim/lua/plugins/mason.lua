return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		table.insert(opts.ensure_installed, "ansible-language-server")
		table.insert(opts.ensure_installed, "ansible-lint")
		table.insert(opts.ensure_installed, "css-lsp")
		table.insert(opts.ensure_installed, "kotlin-language-server")
		table.insert(opts.ensure_installed, "ltex-ls")
		table.insert(opts.ensure_installed, "lua-language-server")
		table.insert(opts.ensure_installed, "marksman")
	end,
}
