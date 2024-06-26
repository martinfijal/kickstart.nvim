
-- Search highlighting
vim.o.hlsearch = true

-- Line numbering
vim.o.number = true
vim.o.relativenumber = true

-- Indending
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- Scrolling
vim.o.scrolloff = 8
vim.o.sidescrolloff = 5

-- Spliting
vim.o.splitbelow = true -- Put new windows below current
vim.o.splitright = true -- Put new windows right of current

-- Cursorline
vim.o.cursorline = true

-- Statusline
-- 2 == always show status line
-- 3 == single global status line
vim.o.laststatus = 2


-- Command
-- 0 == combined command and status
vim.o.cmdheight = 1


-- Return of table required by Lazy
return {}
