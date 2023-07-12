local width = math.max(60, vim.o.columns - 185)

return {
	"nvim-neo-tree/neo-tree.nvim",
	enabled = false,
	opts = { window = { width = width } },
}
