return {
  { "nvim-tree/nvim-web-devicons", lazy = true },

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
    opts = {
      --char = '┊',
      char = "▏",
      show_trailing_blankline_indent = false,
    },
  },

}
