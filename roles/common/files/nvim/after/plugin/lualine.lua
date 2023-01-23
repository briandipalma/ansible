local ok, lualine = pcall(require, "lualine")

if not ok then
	return
end

lualine.setup({
	options = { theme = "rose-pine", globalstatus = true },
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(str)
					return str:sub(1, 1)
				end,
			},
		},
		lualine_b = { "diff", "diagnostics" },
		lualine_c = { { "filename", path = 1 } },
		lualine_x = {
			{
				require("noice").api.statusline.mode.get,
				cond = require("noice").api.statusline.mode.has,
			},
			{
				"encoding",
				fmt = function(str)
					if str == "utf-8" then
						return
					end

					return str
				end,
			},
			{
				"fileformat",
				fmt = function(str)
					if str == "dos" then
						return str
					end
				end,
			},
			"filetype",
		},
	},
	extensions = { "nvim-tree", "quickfix", "toggleterm" },
})
