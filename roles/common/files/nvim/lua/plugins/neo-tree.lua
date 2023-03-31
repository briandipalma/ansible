local width = math.max(50, vim.o.columns - 215)

return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = { window = { width = width } },
}
