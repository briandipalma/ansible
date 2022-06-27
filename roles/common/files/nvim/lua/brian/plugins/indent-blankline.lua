local indent = require("indent_blankline")

indent.setup({
	use_treesitter = true,
	use_treesitter_scope = true,
	show_current_context = true,
	show_first_indent_level = false,
})
