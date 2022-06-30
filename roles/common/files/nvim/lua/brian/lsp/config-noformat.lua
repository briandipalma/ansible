local defaultConfig = require("brian.lsp.config-default")

return {
	capabilities = defaultConfig.capabilities,
	on_attach = defaultConfig.on_attach,
	init_options = { provideFormatter = false },
}
