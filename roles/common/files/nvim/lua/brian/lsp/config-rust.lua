local defaultConfig = require("brian.lsp.config-default")

local function on_attach(client, bufnr)
	defaultConfig.on_attach(client, bufnr)
end

return {
	server = {
		capabilities = defaultConfig.capabilities,
		on_attach = on_attach,
	},
}
