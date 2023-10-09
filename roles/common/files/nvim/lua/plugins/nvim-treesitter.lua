return {
	"nvim-treesitter/nvim-treesitter",
	opts = function(_, opts)
		table.insert(opts.ensure_installed, "comment")
		table.insert(opts.ensure_installed, "css")
		table.insert(opts.ensure_installed, "fish")
		table.insert(opts.ensure_installed, "gitcommit")
		table.insert(opts.ensure_installed, "kotlin")
	end,
}
