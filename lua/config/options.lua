
vim.o.number = true -- Show line numbers in a column.
vim.o.relativenumber = true

vim.o.termguicolors = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = false
vim.o.smartcase = false

vim.o.cursorline = true -- Highlight the line where the cursor is on.
vim.o.scrolloff = 10 -- Keep this many screen lines above/below the cursor.
-- vim.o.list = true -- Show <tab> and trailing spaces.

-- If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s). See `:h 'confirm'`
vim.o.confirm = true
