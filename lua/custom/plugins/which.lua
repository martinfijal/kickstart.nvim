
local wk = require("which-key")

wk.register({
  c = {
    name = 'comment',
    -- c = {'<cmd>gc<CR>', 'Toggle linewise [gc]'},
  },
  b = {
    name = 'buffer',
    c = {'<cmd>:close<CR>', 'Close buffer'},
    d = {'<cmd>:bd<CR>', 'Delete buffer'},
    w = {'<cmd>:w!<CR>', 'Save buffer [<SPC-w>]'},
  },
  f = {
    name = 'files',
    -- f = {'<cmd>NvimTreeToggle<CR>', 'Nvim tree toggle'},
    -- n = {'<cmd>NvimTreeFindFileToggle<CR>', 'Nvim tree find file'},
    -- o = {telescope_find_files, 'Find files [<SPC-o>]'},
    -- g = {telescope_grep_files, 'Grep files [<SPC-g>]'},
  },
  g = {
    name = 'git',
  --   g = {'<cmd>Neogit<CR>', 'Neogit'},
  },
  -- h = {
  --   name = "+help",
  --   t = { "<cmd>:Telescope builtin<cr>", "Telescope" },
  --   c = { "<cmd>:Telescope commands<cr>", "Commands" },
  --   h = { "<cmd>:Telescope help_tags<cr>", "Help Pages" },
  --   m = { "<cmd>:Telescope man_pages<cr>", "Man Pages" },
  --   k = { "<cmd>:Telescope keymaps<cr>", "Key Maps" },
  --   s = { "<cmd>:Telescope highlights<cr>", "Search Highlight Groups" },
  --   l = { vim.show_pos, "Highlight Groups at cursor" },
  --   f = { "<cmd>:Telescope filetypes<cr>", "File Types" },
  --   o = { "<cmd>:Telescope vim_options<cr>", "Options" },
  --   a = { "<cmd>:Telescope autocommands<cr>", "Auto Commands" },
  --   p = {
  --     name = "+packer",
  --     p = { "<cmd>PackerSync<cr>", "Sync" },
  --     s = { "<cmd>PackerStatus<cr>", "Status" },
  --     i = { "<cmd>PackerInstall<cr>", "Install" },
  --     c = { "<cmd>PackerCompile<cr>", "Compile" },
  --   },
  -- },
  l = {
    name = '+lsp',
    a = {vim.lsp.buf.code_action, '[C]ode [A]ction'},
    r = {vim.lsp.buf.rename, '[R]e[n]ame'},
    t = {'<cmd>TroubleToggle<CR>', 'Toggle trouble'},
    s = {
      function()
        require("telescope.builtin").lsp_document_symbols({
          symbols = {
            "Class",
            "Function",
            "Method",
            "Constructor",
            "Interface",
            "Module",
            "Struct",
            "Trait",
            "Field",
            "Property",
          },
        })
      end,
      "Goto Symbol",
    },
  },
  s = {
     name = '+search',
  --   b = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Buffer" },
  --   h = { "<cmd>Telescope command_history<cr>", "Command History" },
  --   m = { "<cmd>Telescope marks<cr>", "Jump to Mark" },
  },
  t = {
    name = "+terminal",
    t = {"<cmd>terminal<CR>", "Start terminal"},
  },
  -- w = {
  --   name = "+windows",
  --   h = {"<C-w>h", 'window left'},
  --   j = {"<C-w>j", 'window down'},
  --   k = {"<C-w>k", 'window up'},
  --   l = {"<C-w>l", 'window right'},
  --
  --   w = {"<C-w>p", 'previous window'},
  --
  --   H = {"<C-w>5<", 'expand window left'},
  --   J = {"<cmd>resize +5<CR>", 'expand window below'},
  --   K = {"<cmd>resize -5<CR>", 'expand window up'},
  --   L = {"<C-w>5>", 'expand window right'},
  --   ['='] = {"<C-w>=", 'balance window'},
  --
  -- },
  -- z = { [[<cmd>ZenMode<cr>]], "Zen Mode" },
}, { prefix = "<leader>" })

return {}
