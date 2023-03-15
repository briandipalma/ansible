local function indexOf(array, value)
	for index, val in ipairs(array) do
		if val == value then
			return index
		end
	end
end

return {
	"nvim-treesitter/nvim-treesitter",
	opts = function(_, opts)
		local pythonIndex = indexOf(opts.ensure_installed, "python")

		table.remove(opts.ensure_installed, pythonIndex)
		table.insert(opts.ensure_installed, "comment")
		table.insert(opts.ensure_installed, "css")
		table.insert(opts.ensure_installed, "diff")
		table.insert(opts.ensure_installed, "dockerfile")
		table.insert(opts.ensure_installed, "fish")
		table.insert(opts.ensure_installed, "gitcommit")
		table.insert(opts.ensure_installed, "git_rebase")
		table.insert(opts.ensure_installed, "hcl")
		table.insert(opts.ensure_installed, "java")
		table.insert(opts.ensure_installed, "jsdoc")
		table.insert(opts.ensure_installed, "kotlin")
		table.insert(opts.ensure_installed, "rust")
		table.insert(opts.ensure_installed, "terraform")
		table.insert(opts.ensure_installed, "toml")
	end,
}
