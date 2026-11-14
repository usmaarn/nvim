vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

require("config.options")
require("config.cmd")

require("config.pack")
require("config.theme")
require("config.treesitter")

-- Plugins Init
require("config.snacks")
require("config.mini")
require("config.lsp")
require("config.cmp")


-- Keymaps
require("config.keymaps")
