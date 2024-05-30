-- NOTE: OPTIONS

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- Make line numbers default
vim.opt.number = true

-- set relative numbered lines
vim.opt.relativenumber = false

-- set number column width to 2 {default 4}
vim.opt.numberwidth = 2

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Show fold lines in column
-- vim.cmd("set foldcolumn=1")

-- always show tabs
vim.opt.showtabline = 1

-- convert tabs to spaces
vim.opt.expandtab = true

-- the number of spaces inserted for each indentation
vim.opt.shiftwidth = 2

-- insert 2 spaces for a tab
vim.opt.tabstop = 2

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"

-- Show last executed comand
vim.opt.showcmd = false

vim.opt.ruler = false

-- Enable break indent
vim.opt.breakindent = true

-- make indenting smarter again
vim.opt.smartindent = true

-- Save undo history
vim.opt.undofile = false

-- more space in the neovim command line for displaying messages
vim.opt.cmdheight = 1

-- mostly just for cmp
vim.opt.completeopt = { "menuone", "noselect" }

-- pop up menu height
vim.opt.pumheight = 10
vim.opt.pumblend = 0

-- so that `` is visible in markdown files
vim.opt.conceallevel = 3

-- Status bar
vim.opt.laststatus = 3

-- the encoding written to a file
vim.opt.fileencoding = "utf-8"

-- creates a backup file
vim.opt.backup = false

-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.writebackup = false

-- creates a swapfile
vim.opt.swapfile = false

-- set term gui colors (most terminals support this)
vim.opt.termguicolors = true

-- display lines as one long line
vim.opt.wrap = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Don't have `o` add a comment
vim.opt.formatoptions:remove("o")

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

vim.opt.title = false
vim.opt.spell = false

-- Correct the wrong indentation of clangd LSP
vim.opt.cindent = true

-- NETRW
vim.g.netrw_banner = 1
vim.g.netrw_mouse = 2
