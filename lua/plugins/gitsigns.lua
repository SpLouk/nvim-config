return {
  {
    "lewis6991/gitsigns.nvim",

    lazy = false,
    event = "VeryLazy",
    keys = {
      {
        "<leader>bg",
        "<cmd>Gitsigns blame<cr>",
        desc = "Toggle Git Blame Gutter",
      },
    },
  },
}
