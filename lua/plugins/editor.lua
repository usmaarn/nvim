-- =============================================================================
-- Editor core
-- =============================================================================
-- The essentials that make Neovim feel like a modern editor: fuzzy finding,
-- file explorer, syntax highlighting, editing helpers and git signs.

return {
	-- Snacks bundles a fast picker, explorer, terminal, smooth scrolling and
	-- more in one plugin (replaces telescope, nvim-tree, toggleterm, ...).
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true }, -- keep huge files responsive
			quickfile = { enabled = true }, -- skip plugins for huge files
			explorer = { enabled = true },
			indent = { enabled = true },
			picker = { enabled = true },
			statuscolumn = { enabled = true }, -- git signs / diagnostics column
			terminal = { enabled = true },
		},
	},

	-- mini.nvim: a collection of small, focused modules. We enable only what
	-- we use, so the editor stays lean and predictable.
	{
		"nvim-mini/mini.nvim",
		config = function()
			-- Auto-close brackets, quotes and parentheses.
			require("mini.pairs").setup()

			-- Better text objects: `i(` `a"` `if` ... and more (mini.ai).
			require("mini.ai").setup()

			-- Add / change / delete surroundings: `sa"`, `sd"`, `sr"'`.
			require("mini.surround").setup()

			-- Toggle comments with `gcc` / `gc` in visual mode.
			-- require("mini.comment").setup()

			-- Move lines and selections with Alt+h/j/k/l.
			require("mini.move").setup({
				mappings = {
					left = "<M-h>",
					right = "<M-l>",
					down = "<M-j>",
					up = "<M-k>",
					line_left = "<M-h>",
					line_right = "<M-l>",
					line_down = "<M-j>",
					line_up = "<M-k>",
				},
			})

			-- Jump to the next/previous match with f/F/t/T improvements.
			require("mini.jump").setup()

			-- Split or join arguments / lists.
			require("mini.splitjoin").setup()

			-- `]` and `[` motions for buffers, diagnostics, git, etc.
			require("mini.bracketed").setup()

			-- Subtle animations (cursor, scroll) - purely cosmetic.
			require("mini.animate").setup()

			-- Filetype icons for the picker, statusline and explorer.
			require("mini.icons").setup()
		end,
	},

	-- Seamless <C-h/j/k/l> movement between Neovim splits and tmux panes.
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
			"TmuxNavigatorProcessList",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
	{
		"abecodes/tabout.nvim",
		priority = 1000,
		event = "InsertCharPre",
		lazy = false,
		config = function()
			require("tabout").setup({})
		end,
	},
    {
        "tpope/vim-abolish"
    },
}
