local function indexOf(array, value)
	for index, val in ipairs(array) do
		if val == value then
			return index
		end
	end
end

return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local flake8Index = indexOf(opts.ensure_installed, "flake8")
		local shfmtIndex = indexOf(opts.ensure_installed, "shfmt")

		table.remove(opts.ensure_installed, flake8Index)
		table.remove(opts.ensure_installed, shfmtIndex)
		table.insert(opts.ensure_installed, "ansible-language-server")
		table.insert(opts.ensure_installed, "ansible-lint")
		table.insert(opts.ensure_installed, "css-lsp")
		table.insert(opts.ensure_installed, "ltex-ls")
		table.insert(opts.ensure_installed, "lua-language-server")
		table.insert(opts.ensure_installed, "marksman")
		table.insert(opts.ensure_installed, "rust-analyzer")
		table.insert(opts.ensure_installed, "rustfmt")
		table.insert(opts.ensure_installed, "terraform-ls")
		table.insert(opts.ensure_installed, "yamllint")
	end,
}
