vim.api.nvim_create_autocmd({ "BufRead" }, {
	pattern = { "*.yml", "*.yaml" },
	callback = function()
		if vim.fn.search("- name: ") > 0 then
			vim.bo.filetype = "yaml.ansible"
		end
	end,
})
