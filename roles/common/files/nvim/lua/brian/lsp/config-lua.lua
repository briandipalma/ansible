local defaultConfig = require("brian.lsp.config-default")

-- Configure lua language server for neovim development
local lua_settings = {
	Lua = {
		runtime = {
			-- LuaJIT in the case of Neovim
			version = "LuaJIT",
		},
		diagnostics = {
			-- Get the language server to recognize the `vim` global
			globals = { "vim" },
		},
		workspace = {
			-- Make the server aware of Neovim runtime files
			library = vim.api.nvim_get_runtime_file("", true),
		},
		format = {
			enable = false,
		},
		telemetry = {
			enable = false,
		},
	},
}

return {
	capabilities = defaultConfig.capabilities,
	on_attach = defaultConfig.on_attach,
	settings = lua_settings,
}
