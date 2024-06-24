return {
  { "nvim-tree/nvim-web-devicons", lazy = true },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = {
      { "<leader>fe", "<cmd>Neotree toggle<cr>", desc = "Neotree" },
    },
    opts = {
      window = {
        mappings = {
          ["l"] = "open",
          ["<space>"] = "none",
        },
      },
    },
  },

  -- Colorscheme
  {
    'sainnhe/sonokai',
    priority = 999,
    config = function()
      vim.g.sonokai_style = 'atlantis'
      vim.cmd.colorscheme 'sonokai'
    end,
  },

  -- TODO move
  -- CtrlP
  {
    'ctrlpvim/ctrlp.vim'
  },

  -- Zen mode
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
    opts = {
    }
  },

  -- Indents
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('ibl').setup{
        --char = '┊',
        indent = {
          char = "▏",
        },
        -- show_trailing_blankline_indent = false,
      }
    end,
  },

}
