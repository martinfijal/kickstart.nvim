
-- Terminal auto commands

-- Local settings for terminals
vim.api.nvim_create_autocmd({"TermOpen"}, {
  pattern = {"*"},
  callback = function()
    vim.opt_local.signcolumn='auto'
    vim.opt_local.spell=false
    vim.opt_local.relativenumber=false
    vim.opt_local.number=false
  end,
})

-- Enter/exit terminal in insert/normal mode
vim.api.nvim_create_autocmd({"BufWinEnter", "WinEnter"}, {
  pattern = {"term://*"},
  command = "startinsert",
})
vim.api.nvim_create_autocmd({"BufLeave"}, {
  pattern = {"term://*"},
  command = "stopinsert",
})


-- Close certain file types with q
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "qf",
    "help",
    "man",
    "notify",
    "lspinfo",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "PlenaryTestPopup",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- TODO refactor    
vim.api.nvim_exec(
[[
autocmd FileType hcl setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType terraform setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd bufread *.nomad set ft=hcl
]], false)


return {}
