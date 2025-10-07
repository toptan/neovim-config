return {
  "stevearc/oil.nvim",
  lazy = true,
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { "-", "<cmd>Oil --float<cr>", desc = "Open parent directory in Oil" },
  },
}
