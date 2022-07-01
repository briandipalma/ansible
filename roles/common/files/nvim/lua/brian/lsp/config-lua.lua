local defaultConfig = require("brian.lsp.config-default")
local disableFormatting = require("brian.lsp.disable-formatting")

local function on_attach(client, bufnr)
	defaultConfig.on_attach(client, bufnr)

	disableFormatting(client)
end

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
	on_attach = on_attach,
	settings = lua_settings,
}
