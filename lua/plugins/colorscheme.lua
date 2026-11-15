-- =============================================================================
-- Theme
-- =============================================================================
-- Catppuccin is the default. TokyoNight is installed as an easy alternative:
-- run `:colorscheme tokyonight` to switch for the current session.

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				background = { light = "latte", dark = "mocha" },
				transparent_background = true,
				term_colors = true,
				float = { transparent = true, solid = false },
				styles = {
					comments = { "italic" },
					keywords = { "italic" },
					functions = { "bold" },
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					treesitter = true,
					native_lsp = { enabled = true },
					notify = true,
					noice = true,
					which_key = true,
					mini = { enabled = true },
					snacks = { enabled = true },
					dap = { enabled = true },
					dap_ui = { enabled = true },
					markdown = true,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			style = "night",
			transparent = true,
		},
	},
}
