-- =============================================================================
-- User interface
-- =============================================================================
-- Statusline, command line, notifications, keybinding hints and diagnostics
-- panels. These make the editor feel modern without changing how it works.

-- Statusline. Shows mode, git branch, diagnostics, file, position.
require("lualine").setup({
    options = {
        theme = "auto",
        globalstatus = true,
        section_separators = "",
        component_separators = "|",
        disabled_filetypes = { statusline = { "snacks_picker_list" } },
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "filetype" },
        lualine_y = { "location" },
        lualine_z = { "progress" },
    },
    extensions = { "mason", "trouble", "quickfix" },
})

-- Modern command line, messages and popup menu.
require("noice").setup({
    cmdline = { enabled = true, view = "cmdline_popup" },
    messages = {
        enabled = true,
        view = "notify",
        view_error = "notify",
        view_warn = "notify",
    },
    popupmenu = { enabled = true },
    presets = {
        command_palette = true,
        long_message_to_split = true,
        lsp_doc_border = true,
    },
})

-- Press <Space> and wait; which-key shows every available group.
require("which-key").setup({ preset = "modern" })

-- Diagnostics, symbols, references and todos in a nice split.
require("trouble").setup({})

-- Highlight TODO / FIXME / NOTE comments.
require("todo-comments").setup({})

-- Small LSP progress spinner in the bottom-right corner.
require("fidget").setup({})
