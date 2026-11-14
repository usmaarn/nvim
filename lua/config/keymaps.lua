-- Snacks
local Snacks = require("snacks")

local map = vim.keymap.set

-- General
map("n", "<leader><space>", function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
map("n", "<leader>,", Snacks.picker.buffers, { desc = "Buffers" })
map("n", "<leader>/", Snacks.picker.grep, { desc = "Grep" })
map("n", "<leader>e", function() Snacks.explorer() end, { desc = "File Explorer" })

map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
map("n", "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,
	{ desc = "Find Config Files" })

map("n", "<leader>gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
map("n", "<leader>gD", function() Snacks.picker.lsp_declarations() end, { desc = "Goto Declaration" })
map("n", "<leader>gr", function() Snacks.picker.lsp_references() end, { desc = "References" })
map("n", "<leader>gI", function() Snacks.picker.lsp_implementations() end, { desc = "Goto Implementation" })
map("n", "<leader>gy", function() Snacks.picker.lsp_type_definitions() end, { desc = "Goto T[y]pe Definition" })

map("n", "<leader>F", "<Cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format file" })

-- Vim Tmux Navigation
map("n", "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", { desc = "Navigate left" })
map("n", "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", { desc = "Navigate down" })
map("n", "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", { desc = "Navigate up" })
map("n", "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", { desc = "Navigate Right" })


map("n", "<leader>m", MiniSplitjoin.toggle, {desc = "Toggle Split/Join" })
