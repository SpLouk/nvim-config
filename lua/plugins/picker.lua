return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      hidden = true,
      win = {
        input = {
          keys = {
            ["<c-w>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<c-w>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
        preview = {
          keys = {
            ["<c-w>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
      },
    },
  },
  keys = {
    {
      "<leader>gL",
      function()
        Snacks.picker.git_log_line()
      end,
      desc = "Git Log Line",
    },
    {
      "<leader>gf",
      function()
        Snacks.picker.git_log_file()
      end,
      desc = "Git Log File",
    },
  },
}
