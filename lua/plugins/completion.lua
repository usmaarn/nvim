-- =============================================================================
-- Completion
-- =============================================================================
-- blink.cmp is fast and needs very little configuration. It also reads
-- friendly-snippets and your own snippets from ~/.config/nvim/snippets/.

return {
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = { "rafamadriz/friendly-snippets" },
		opts = {
			-- `super-tab`: <Tab> accepts, like VS Code. Plenty of people prefer
			-- `default` (accept with <C-y>); change it and restart Neovim.
			-- keymap = { preset = "super-tab" },

			appearance = { nerd_font_variant = "mono" },

			completion = {
				menu = { auto_show = true },
				documentation = { auto_show = true, auto_show_delay_ms = 150 },
			},

			signature = { enabled = true },

			-- Where completions come from: language servers, file paths,
			-- snippets and words already present in the buffer.
			sources = { default = { "lsp", "path", "snippets", "buffer" } },

			-- Use the fast Rust matcher when available, fall back to Lua.
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
}
