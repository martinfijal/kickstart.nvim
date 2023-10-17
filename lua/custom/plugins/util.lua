return {
  -- TODO move to own file or buffers.vim
  {
    'ojroques/nvim-bufdel',
    keys = {
      { "<leader>bx", "<cmd>BufDel<cr>", desc = "Remove buffer [SPC-q]" },
    },
    opts = {
      next = 'alternate',
      quit = false,
    },
  }
}
