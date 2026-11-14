require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "gopls", "rust_analyzer", "ts_ls", "sqlls", "pyright", "svelte", "cssls", "html", "tailwindcss" },
})


vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME,
                },
            },
        },
    },
})
