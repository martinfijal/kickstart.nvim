
local telescope_find_files = '<cmd>:Telescope find_files hidden=true sort_lastused=true theme=get_ivy winblend=10<CR>'
local telescope_grep_files = '<cmd>:Telescope live_grep theme=get_ivy<CR>'

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
      { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },

      { "<leader>/", telescope_grep_files, desc = "Grep files" },
      { "<leader>o", telescope_find_files, desc = "Find files [SPC-o]" },
      { "<leader><space>", telescope_find_files, desc = "Find files [SPC-o]" },
      -- find
      -- { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      -- { "<leader>ff", telescope("files"), desc = "Find Files (root dir)" },
      -- { "<leader>fF", telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
      -- { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
      -- { "<leader>fR", telescope("oldfiles", { cwd = vim.loop.cwd() }), desc = "Recent (cwd)" },
      -- git
      -- { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Telescope commits" },
      -- { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Telescope status" },
      -- search
      { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
      { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
      { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
      { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
      { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
      { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
      { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
      { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
      { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
      { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },

    },
    opts = {
      defaults = {
        file_ignore_patterns = {'node_modules/.*', '.git/.*'},
        prompt_prefix = " ",
        -- selection_caret = " ",
        mappings = {
          i = {
            ["<esc>"] = function (...)
              return require("telescope.actions").close(...)
            end,
            ["<C-Down>"] = function(...)
              return require("telescope.actions").cycle_history_next(...)
            end,
            ["<C-Up>"] = function(...)
              return require("telescope.actions").cycle_history_prev(...)
            end,
            ["<C-f>"] = function(...)
              return require("telescope.actions").preview_scrolling_down(...)
            end,
            ["<C-b>"] = function(...)
              return require("telescope.actions").preview_scrolling_up(...)
            end,
          },
          n = {
            ["q"] = function(...)
              return require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
  },
}
