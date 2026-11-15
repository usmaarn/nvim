local servers = {
    "lua_ls",
    "gopls",
    "pyright",
    "clangd",
    "ts_ls",
    "svelte",
    "cssls",
    "html",
    "tailwindcss",
    "emmet_language_server",
    "bashls",
    "dockerls",
    "yamlls",
    "jsonls",
    "cmake",
    "sqlls",
    "rust_analyzer",
}

return {
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = servers,
            automatic_enable = false,
        },
        config = function(_, opts)
            -- Configure lua_ls
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },
                        workspace = {
                            preloadFileSize = 10000,
                            library = {
                                vim.env.VIMRUNTIME,
                            },
                        },
                    },
                },
            })

            -- Configure Emmet
            vim.lsp.config("emmet_language_server", {
                cmd = { "emmet-language-server", "--stdio" },
                filetypes = {
                    "astro",
                    "css",
                    "eruby",
                    "html",
                    "htmlangular",
                    "htmldjango",
                    "javascriptreact",
                    "less",
                    "sass",
                    "scss",
                    "svelte",
                    "typescriptreact",
                    "vue",
                },
                root_markers = { ".git" },
            })

            -- Initialize Mason LSP Config
            require("mason-lspconfig").setup(opts)

            -- Enable all configured servers
            for _, server in ipairs(servers) do
                vim.lsp.enable(server)
            end
        end,
    },
}
