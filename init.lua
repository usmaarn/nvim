vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

require("config.options")
require("config.cmd")

-- Pack Plugins
local gh = function(x) return "https://github.com/" .. x end

vim.pack.add({
	gh("nvim-mini/mini.nvim"),
	{src = gh "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{src = gh "folke/snacks.nvim", name="snacks"},
	-- Blink
	gh 'rafamadriz/friendly-snippets',
	{src = gh 'saghen/blink.cmp', version = 'v1.10.2' },

	-- Lsp
	gh "neovim/nvim-lspconfig",
	gh "mason-org/mason.nvim",
	gh "mason-org/mason-lspconfig.nvim",
	gh "christoomey/vim-tmux-navigator",
	gh "kawre/neotab.nvim",
	{
		src = gh "thesimonho/kanagawa-paper",
		version = "neovim", -- tracks the 'neovim' branch
	},
	gh "folke/tokyonight.nvim",
	gh "scottmckendry/cyberdream.nvim",
})
require("cyberdream").setup({
  variant = "default",
  transparent = true,
  italic_comments = true,
  saturation = 1,
  terminal_colors = true,
  hide_fillchars = false,
})
vim.cmd.colorscheme "cyberdream"

require("config.treesitter")

-- Plugins Init
require("config.snacks")
require("config.mini")
require("config.lsp")
require("config.cmp")


-- Keymaps
require("config.keymaps")
