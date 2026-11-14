require("blink.cmp").setup({
	keymap = { preset = 'default' },

	appearance = {
		nerd_font_variant = 'mono'
	},

	completion = {
		menu = {
			auto_show = true
		},
		trigger = { show_on_keyword = true },
		documentation = { auto_show = true }
	},
	signature = { enabled = true },

	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' }
	},

	fuzzy = { implementation = "prefer_rust_with_warning" }
})
