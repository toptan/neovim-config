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
    gitbrowse = { enabled = false },
    image = { enabled = false },
    indent = { enabled = true, animate = { enabled = false } },
    input = { enabled = true },
    layout = { enabled = false },
    lazygit = { enabled = true },
    notifier = { enabled = false },
    picker = { enabled = true, layout = { cycle = false } },
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
    {
      "<leader>gl",
      function()
        Snacks.lazygit.log()
      end,
      desc = "[L]og",
    },
    {
      "<leader>gf",
      function()
        Snacks.lazygit.log_file()
      end,
      desc = "Log for current [F]ile",
    },
    {
      "<leader>gg",
      function()
        Snacks.lazygit.open()
      end,
      desc = "Lazy[G]it",
    },
    {
      "<leader><leader>",
      function()
        Snacks.picker.buffers()
      end,
      desc = "List buffers",
    },
    {
      "<leader>cd",
      function()
        Snacks.picker.diagnostics_buffer()
      end,
      desc = "Buffer [d]iagnostics",
    },
    {
      "<leader>cD",
      function()
        Snacks.picker.diagnostics()
      end,
      desc = "Workspace [D]iagnostics",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "[F]iles",
    },
    {
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = "~/.config/nvim" })
      end,
      desc = "Neovim [c]config files",
    },
    {
      "<leader>fP",
      function()
        Snacks.picker.pick()
      end,
      desc = "Snacks [P]ickers",
    },
    {
      "<leader>fp",
      function()
        Snacks.picker.projects()
      end,
      desc = "Recent [p]rojects",
    },
    {
      "<leader>sh",
      function()
        Snacks.picker.help()
      end,
      desc = "[H]elp",
    },
    {
      "<leader>sk",
      function()
        Snacks.picker.keymaps()
      end,
      desc = "[K]eymaps",
    },
    {
      "<leader>st",
      function()
        Snacks.picker.todo_comments()
      end,
      desc = "[T]odo comments",
    },
  },
}
