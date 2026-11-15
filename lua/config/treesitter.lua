local gh = function(x) return "https://github.com/" .. x end

return function()
	vim.pack.add({
		{ src = gh "nvim-treesitter/nvim-treesitter", version = "main", build = ":TSUpdate" },
	}, { confirm = false })

	require("nvim-treesitter").install({
		-- Languages you use daily
		"go",
		"gomod",
		"gosum",
		"python",
		"rust",
		"lua",
		"luadoc",
		"c",
		"cpp",
		"svelte",
		"javascript",
		"typescript",
		"tsx",
		"css",
		"scss",
		"html",
		"json",
		"yaml",
		"toml",
		"sql",
		-- DevOps / systems
		"bash",
		"dockerfile",
		"terraform",
		"hcl",
		"cmake",
		"make",
		"ini",
		"proto",
		-- Editor / docs
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
		"gitcommit",
		"gitignore",
		"diff",
		"regex",
		"http",
	})
end
