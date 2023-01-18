local ok, nvim_treesitterConfigs = pcall(require, "nvim-treesitter.configs")

if not ok then
	return
end

nvim_treesitterConfigs.setup({
	ensure_installed = {
		"c",
		"comment",
		"css",
		"dockerfile",
		"fish",
		"hcl",
		"help",
		"html",
		"java",
		"javascript",
		"jsdoc",
		"json",
		"kotlin",
		"lua",
		"markdown",
		"markdown_inline",
		"regex",
		"rust",
		"toml",
		"tsx",
		"typescript",
		"yaml",
		"vim",
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<leader>ii",
			node_incremental = "<leader>ik",
			scope_incremental = "<leader>il",
			node_decremental = "<leader>ij",
		},
	},
	indent = {
		enable = true,
	},
})
