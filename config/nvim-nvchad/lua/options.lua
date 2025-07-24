require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- Keep 8 lines around the cursor when moving with jkhl
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4

-- Use relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Highlight the current line
vim.wo.cursorline = true

-- Display the sign column on the left for icons
vim.wo.signcolumn = "yes"

-- Right-side reference line, indicates code is too long, consider wrapping
vim.wo.colorcolumn = "100"

-- Indent 2 spaces for one Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- Length of movement when using >> <<
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- Replace tabs with spaces
vim.o.expandtab = true
vim.bo.expandtab = true

-- New lines align with the current line
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- Search case-insensitive, unless a capital letter is included
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight search results
vim.o.hlsearch = true

-- Search as you type
vim.o.incsearch = true

-- Command line height is 2, providing enough display space
vim.o.cmdheight = 2

-- Automatically reload when file is modified by an external program
vim.o.autoread = true
vim.bo.autoread = true

-- Enable wrapping
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false
vim.bo.textwidth = 100

-- Cursor can jump to next line when at the start/end of a line using <Left><Right>
vim.o.whichwrap = "<,>,[,]"

-- Allow hidden modified buffers
vim.o.hidden = true

-- Mouse support
vim.o.mouse = "a"

-- Disable creation of backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- Smaller updatetime
vim.o.updatetime = 300

-- Set timeoutlen to 500 milliseconds for waiting for key combination shortcuts, can be adjusted as needed
vim.o.timeoutlen = 300

-- Split windows appear from the bottom and right
vim.o.splitbelow = true
vim.o.splitright = true

-- Auto-completion does not auto-select
-- vim.opt.completeopt = "menu,menuone,preview"
vim.opt.completeopt = { "menuone" }

-- Style
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- Display of invisible characters, here only spaces are shown as a dot
-- vim.o.list = true
-- vim.o.listchars = "space:·"

-- Enhanced completion
vim.o.wildmenu = true

-- Don't pass messages to |ins-completion menu|
vim.o.shortmess = vim.o.shortmess .. "c"

-- Completion displays a maximum of 10 lines
vim.o.pumheight = 10

-- Always show tabline
-- vim.o.showtabline = 2

-- No longer need Vim's mode indicator after using an enhanced status bar plugin
vim.o.showmode = false

-- vim.o.foldmethod = 'marker'
-- vim.o.foldmarker = '  ' -- This is two spaces

