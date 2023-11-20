return {
	"harrisoncramer/gitlab.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"stevearc/dressing.nvim",
		enabled = true,
	},
	lazy = false,
	build = function()
		require("gitlab.server").build(true)
	end,
	config = function()
		local config = {
			attachment_dir = "/home/brian/Pictures/Screenshots",
			discussion_tree = { position = "bottom" },
			config_path = "/home/brian/dev/my-data/",
		}

		require("gitlab").setup(config)
	end,
	keys = {
		{
			"<leader>md",
			function()
				require("gitlab").toggle_discussions()
			end,
			desc = "Toggle Gitlab MR discussions",
		},
		{
			"<leader>mm",
			function()
				require("gitlab").review()
			end,
			desc = "Review Gitlab MR",
		},
		{
			"<leader>ms",
			function()
				require("gitlab").summary()
			end,
			desc = "Show Gitlab MR summary",
		},
		{
			"<leader>ma",
			function()
				require("gitlab").approve()
			end,
			desc = "Approve Gitlab MR",
		},
		{
			"<leader>mR",
			function()
				require("gitlab").revoke()
			end,
			desc = "Revoke Gitlab MR approval",
		},
		{
			"<leader>mc",
			function()
				require("gitlab").create_comment()
			end,
			desc = "Create Gitlab MR comment",
		},
		{
			"<leader>mn",
			function()
				require("gitlab").create_note()
			end,
			desc = "Create Gitlab MR note",
		},
		{
			"<leader>mM",
			function()
				require("gitlab").create_multiline_comment()
			end,
			desc = "Create Gitlab multiline comment",
		},
		{
			"<leader>mS",
			function()
				require("gitlab").create_comment_suggestion()
			end,
			mode = { "v" },
			desc = "Create Gitlab comment suggestion",
		},
		{
			"<leader>mAa",
			function()
				require("gitlab").add_assignee()
			end,
			desc = "Add assignee to Gitlab MR",
		},
		{
			"<leader>mDa",
			function()
				require("gitlab").delete_assignee()
			end,
			desc = "Delete assignee from Gitlab MR",
		},
		{
			"<leader>mAr",
			function()
				require("gitlab").add_reviewer()
			end,
			desc = "Add reviewer to Gitlab MR",
		},
		{
			"<leader>mDr",
			function()
				require("gitlab").delete_reviewer()
			end,
			desc = "Delete reviewer from Gitlab MR",
		},
		{
			"<leader>mp",
			function()
				require("gitlab").pipeline()
			end,
			desc = "Show Gitlab MR pipeline",
		},
		{
			"<leader>mo",
			function()
				require("gitlab").open_in_browser()
			end,
			desc = "Show Gitlab MR in browser",
		},
		{
			"<leader>mt",
			function()
				require("gitlab").move_to_discussion_tree_from_diagnostic()
			end,
			desc = "Move to discussion tree from diagnostic",
		},
	},
}
