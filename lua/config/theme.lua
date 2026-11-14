require("catppuccin").setup({
	flavour = "mocha",
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true, -- disables setting the background color.
	float = {
		transparent = true, -- enable transparent floating windows:w
		solid = false, -- use solid styling for floating windows, see |winborder|
	},
	term_colors = true,
})

vim.cmd.colorscheme "tokyonight-night"
