-- =============================================================================
-- Language-specific extras
-- =============================================================================
-- Most languages only need their LSP server (configured in lsp.lua) and
-- treesitter parser (configured in editor.lua). The few plugins below add
-- polish where the defaults are not enough.

return {
	-- Automatically close and rename HTML/JSX/Svelte/XML tags.
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},
}
