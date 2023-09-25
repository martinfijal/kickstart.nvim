return {
  { "nvim-tree/nvim-web-devicons", lazy = true },

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
