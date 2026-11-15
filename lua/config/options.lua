local opt = vim.o

-- --- Line numbers -----------------------------------------------------------
opt.number = true -- absolute number on the current line
opt.relativenumber = true -- relative numbers everywhere else (great for motions)

-- --- Appearance -------------------------------------------------------------
opt.termguicolors = true
opt.background = "dark"
opt.winborder = "rounded" -- rounded borders for floating windows
opt.showmode = false -- the statusline already shows the mode
opt.laststatus = 3 -- one global statusline instead of one per window
opt.cursorline = true
opt.signcolumn = "yes" -- always reserve space, so text never shifts
opt.fillchars = { eob = " ", fold = " ", diff = "╱", vert = "│" }

-- --- Indentation ------------------------------------------------------------
-- Global defaults. Language exceptions (Go tabs, web 2 spaces) live in autocmds.
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

-- --- Searching --------------------------------------------------------------
opt.ignorecase = true
opt.smartcase = true -- ...unless the search contains uppercase
opt.incsearch = true
opt.inccommand = "split" -- live preview while typing :s/old/new/

-- --- Scrolling --------------------------------------------------------------
opt.scrolloff = 8 -- keep context above/below the cursor
opt.sidescrolloff = 8

-- --- Files / undo -----------------------------------------------------------
opt.undofile = true -- persistent undo history
opt.undolevels = 10000
opt.confirm = true -- ask to save instead of failing :q

opt.clipboard = "unnamedplus"
