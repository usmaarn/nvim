-- Pack Plugins
local gh = function(x) return "https://github.com/" .. x end

vim.pack.add({
	gh("nvim-mini/mini.nvim"),
	{src = gh "catppuccin/nvim", name = "catppuccin"},
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
	gh "folke/tokyonight.nvim",
	gh "ellisonleao/gruvbox.nvim",
})
