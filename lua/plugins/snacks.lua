return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    animate = { enabled = false },
    bigfile = { enabled = false },
    bufdelete = { enabled = true },
    dashboard = { enabled = false },
    debug = { enabled = false },
    dim = { enabled = false }, -- TODO: Revisit this
    explorer = { enabled = false }, -- TODO: Revisit this
    git = { enabled = true },
  },
  keys = {
    {
      "<leader>x",
      function()
        Snacks.bufdelete.delete()
      end,
      desc = "Delete current buffer",
    },
    {
      "<leader>bd",
      function()
        Snacks.bufdelete.delete()
      end,
      desc = "[D]elete current buffer",
    },
    {
      "<leader>ba",
      function()
        Snacks.bufdelete.all()
      end,
      desc = "Delete [A]ll buffers",
    },
    {
      "<leader>bo",
      function()
        Snacks.bufdelete.other()
      end,
      desc = "Delete [O]ther buffers",
    },
    {
      "<leader>gb",
      function()
        Snacks.git.blame_line()
      end,
      desc = "[B]lame",
    },
  },
}
