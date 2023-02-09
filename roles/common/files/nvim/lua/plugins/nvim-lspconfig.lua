return {
	"neovim/nvim-lspconfig",
	opts = {
		capabilities = {
			textDocument = {
				-- Add folding range to capabilities, for nvim-ufo
				foldingRange = {
					dynamicRegistration = false,
					lineFoldingOnly = true,
				},
			},
		},
	},
}
