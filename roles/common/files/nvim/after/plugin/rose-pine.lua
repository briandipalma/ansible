local ok, rose_pine = pcall(require, "rose-pine")

if not ok then
	return
end

rose_pine.setup()

vim.cmd("colorscheme rose-pine")
