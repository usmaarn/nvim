-- =============================================================================
-- User interface
-- =============================================================================
-- Statusline, command line, notifications, keybinding hints and diagnostics
-- panels. These make the editor feel modern without changing how it works.

return {
	-- Statusline. Shows mode, git branch, diagnostics, file, position.
	{
		"nvim-lualine/lualine.nvim",
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "auto",
				globalstatus = true,
				section_separators = "",
				component_separators = "|",
				disabled_filetypes = { statusline = { "snacks_picker_list" } },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "filetype" },
				lualine_y = { "location" },
				lualine_z = { "progress" },
			},
			extensions = { "lazy", "mason", "trouble", "quickfix" },
		},
	},

	-- Modern command line, messages and popup menu.
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {
			cmdline = { enabled = true, view = "cmdline_popup" },
			messages = {
				enabled = true,
				view = "notify",
				view_error = "notify",
				view_warn = "notify",
			},
			popupmenu = { enabled = true },
			presets = {
				command_palette = true,
				long_message_to_split = true,
				lsp_doc_border = true,
			},
		},
	},

	-- Press <Space> and wait; which-key shows every available group.
	{
		"folke/which-key.nvim",
		opts = { preset = "modern" },
	},

	-- Diagnostics, symbols, references and todos in a nice split.
	{
		"folke/trouble.nvim",
		opts = {},
	},

	-- Highlight TODO / FIXME / NOTE comments.
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	-- Small LSP progress spinner in the bottom-right corner.
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
