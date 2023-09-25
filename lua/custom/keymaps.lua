

-- local telescope_find_files = '<cmd>:Telescope find_files hidden=true sort_lastused=true theme=get_ivy winblend=10<CR>'
-- vim.keymap.set('n', '<leader>o', telescope_find_files, {desc='Find files [<SPC-o>]'})
-- -- Grep files
-- local telescope_grep_files = '<cmd>:Telescope live_grep theme=get_ivy<CR>'
-- vim.keymap.set('n', '<leader>g', telescope_grep_files, {desc='Grep files [<SPC-g>]'})

-- Save buffer
vim.keymap.set('n', '<leader>w', '<cmd>:w!<CR>', {desc='Save buffer [<SPC-w>]'})

-- Switch buffers
vim.keymap.set('n', '<TAB>', '<cmd>CtrlPBuffer<CR>', {desc='Switch buffer [TAB]'})

-- Move around
vim.keymap.set('n', '<C-h>', '<C-w>h', {desc='Window left [C-h]'})
vim.keymap.set('n', '<C-l>', '<C-w>l', {desc='Window right [C-l]'})
vim.keymap.set('n', '<C-j>', '<C-w>j', {desc='Window down [C-j]'})
vim.keymap.set('n', '<C-k>', '<C-w>k', {desc='Window up [C-k]'})

-- Move from terminal
vim.keymap.set('t', '<C-h>', '<c-\\><c-n><c-w>h', {desc='Window left [C-h]'})
vim.keymap.set('t', '<C-l>', '<c-\\><c-n><c-w>l', {desc='Window right [C-l]'})
vim.keymap.set('t', '<C-j>', '<c-\\><c-n><c-w>j', {desc='Window down [C-j]'})
vim.keymap.set('t', '<C-k>', '<c-\\><c-n><c-w>k', {desc='Window up [C-k]'})

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Sane escape in terminal
vim.keymap.set('t', '<ESC>', '&filetype == "fzf" ? "\\<ESC>" : "\\<C-\\>\\<C-n>"' , {expr = true})


return {}
