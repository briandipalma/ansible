local width = math.max(35, vim.o.columns - 215)

local function searchFunction(path)
	vim.ui.input({ prompt = "Search regex" }, function(query)
		path = path or ""
		query = query or ""

		if query ~= "" then
			query = string.format(" -G'%s'", query)
		end

		vim.cmd("DiffviewFileHistory " .. path .. query)
	end)
end

local function searchFile()
	searchFunction("%")
end

local function searchBranch()
	searchFunction()
end

return {
	"sindrets/diffview.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", desc = "View current file history" },
		{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "View current branch history" },
		{ "<leader>dg", searchFile, desc = "Search current file history" },
		{ "<leader>dG", searchBranch, desc = "Search current branch history" },
		{
			"<leader>dr",
			"<cmd>DiffviewOpen origin/master...HEAD<cr>",
			desc = "Review current branch versus remote master",
		},
	},
	opts = {
		file_panel = { win_config = { width = width } },
		default_args = { DiffviewFileHistory = { "--follow", "--no-merges" } },
	},
}
