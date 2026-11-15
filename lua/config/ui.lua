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
