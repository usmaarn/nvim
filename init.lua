-- Ghe leader keys MUST be set before plugins load.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local gh = function(x) return "https://github.com/" .. x end

vim.pack.add({
    gh "rebelot/kanagawa.nvim",
    gh "rafamadriz/friendly-snippets",
    { src = gh "saghen/blink.cmp", version = "v1.10.2" },
    gh "folke/snacks.nvim",
    gh "nvim-mini/mini.nvim",
    gh "christoomey/vim-tmux-navigator",
    gh "abecodes/tabout.nvim",
    gh "tpope/vim-abolish",
    --- LSP ---
    gh "mason-org/mason.nvim",
    gh "neovim/nvim-lspconfig",
    gh "mason-org/mason-lspconfig.nvim",
    --- Languages
    gh "windwp/nvim-ts-autotag",
    --- UI ----
    gh "nvim-lualine/lualine.nvim",
    gh "MunifTanjim/nui.nvim",
    gh "rcarriga/nvim-notify",
    gh "folke/noice.nvim",
    gh "folke/which-key.nvim",
    gh "folke/trouble.nvim",
    gh "nvim-lua/plenary.nvim",
    gh "folke/todo-comments.nvim",
    gh "j-hui/fidget.nvim",

})

-- Core settings (fast, no plugins).
require("config.options")
require("config.treesitter")
-- Global keymaps and automatic commands.
--
-- Blink CMP
require("blink.cmp").setup({
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
})

-- Colorscheme
require("kanagawa").setup({})
vim.cmd.colorscheme("kanagawa-dragon")


-- UI Config
require("config.ui")

--- Editor Config
require("config.editor")

--- Lsp Config
require("config.lsp")
--- Tabout ---
require("tabout").setup({
    tabkey = '<Tab>',             -- key to trigger tabout, set to an empty string to disable
    backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
    act_as_tab = true,            -- shift content if tab out is not possible
    act_as_shift_tab = true,      -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
})


--- TS AutoTag
require("nvim-ts-autotag").setup({})

-- KeyMaps
require("config.keymaps")

--- Auto CMDs ===
require("config.autocmd")
