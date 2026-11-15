-- Ghe leader keys MUST be set before plugins load.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Core settings (fast, no plugins).
require("config.options")

-- Boot lazy.nvim. This is what loads lua/plugins/*.
require("config.lazy")

-- Global keymaps and automatic commands.
require("config.keymaps")
require("config.autocmds")


