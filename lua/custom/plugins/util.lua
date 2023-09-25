return {
  {
    'ojroques/nvim-bufdel',
    keys = {
      { "<leader>x", "<cmd>BufDel<cr>", desc = "Remove buffer [SPC-x]" },
      { "<leader>bx", "<cmd>BufDel<cr>", desc = "Remove buffer [SPC-x]" },
    },
    opts = {
      next = 'alternate',
      quit = false,
    },
  }
}
