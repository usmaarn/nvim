local map = vim.keymap.set
local Snacks = require("snacks")

-- --- Files / search ---------------------------------------------------------
map("n", "<leader><space>", function() Snacks.picker.smart() end, { desc = "Smart find" })
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find files" })
map("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Grep project" })
map("n", "<leader>fw", function() Snacks.picker.grep_word() end, { desc = "Grep word" })
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
map("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Recent files" })
map("n", "<leader>fh", function() Snacks.picker.help() end, { desc = "Help" })
map("n", "<leader>fd", function() Snacks.picker.diagnostics() end, { desc = "Diagnostics" })
map("n", "<leader>fs", function() Snacks.picker.lsp_symbols() end, { desc = "Symbols" })
map("n", "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, { desc = "Config files" })
map("n", "<leader>e", function() Snacks.explorer() end, { desc = "File explorer" })
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

--for multiple hits)
map("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Goto definition" })
map("n", "gD", function() Snacks.picker.lsp_declarations() end, { desc = "Goto declaration" })
map("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "Goto references" })
map("n", "gi", function() Snacks.picker.lsp_implementations() end, { desc = "Goto implementation" })
map("n", "gy", function() Snacks.picker.lsp_type_definitions() end, { desc = "Goto type definition" })

-- Information / actions
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- --- Buffers ----------------------------------------------------------------
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- --- Terminal ---------------------------------------------------------------
map("n", "<leader>tt", function() Snacks.terminal() end, { desc = "Toggle terminal" })

-- --- Code -------------------------------------------------------------------
map("n", "<leader>cf", vim.lsp.buf.format, { desc = "format buffer" })
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line diagnostics" })
map("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next diagnostic" })
map("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Previous diagnostic" })


-- Seamless <C-h/j/k/l> movement between Neovim splits and tmux panes.
map("n", "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>")
map("n", "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>")
map("n", "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>")
map("n", "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>")
map("n", "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>")
