local ok, telescope = pcall(require, "telescope")

if not ok then
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local telescopeConfig = require("telescope.config")

local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!.git/*")

telescope.setup({
	defaults = {
		layout_config = { height = 200, width = 500 },
		mappings = {
			i = {
				["<C-s>"] = actions.cycle_previewers_next,
				["<C-a>"] = actions.cycle_previewers_prev,
			},
		},
		vimgrep_arguments = vimgrep_arguments,
	},
	pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
		},
		lsp_references = { fname_width = 70 },
	},
})

telescope.load_extension("fzf")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "List files in cwd, respects .gitignore" })
vim.keymap.set("n", "<leader>fg", builtin.grep_string, { desc = "Searches for string under cursor" })
vim.keymap.set("n", "<leader>fl", builtin.live_grep, { desc = "Searches for string and get live results" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "List open buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "List available help tags" })
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "List previously open files" })
vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "List available plugin/user commands" })
vim.keymap.set("n", "<leader>fd", builtin.lsp_document_symbols, { desc = "Lists LSP document symbols in buffer" })
vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy find in current buffer" })
vim.keymap.set("n", "<leader>fp", builtin.resume, { desc = "Resume previous picker" })
vim.keymap.set("n", "<leader>fB", builtin.git_branches, { desc = "Lists all branches with log preview" })
vim.keymap.set("n", "<leader>fm", builtin.git_bcommits, { desc = "Lists buffer's git commits with diff" })
vim.keymap.set("n", "<leader>fM", builtin.git_commits, { desc = "Lists git commits with diff" })
vim.keymap.set("n", "<leader>fi", builtin.diagnostics, { desc = "Lists diagnostics" })
