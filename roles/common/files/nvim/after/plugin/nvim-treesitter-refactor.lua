local ok, nvim_treesitterConfigs = pcall(require, "nvim-treesitter.configs")

if not ok then
	return
end

nvim_treesitterConfigs.setup({
	refactor = {
		highlight_definitions = { enable = true },
	},
})
