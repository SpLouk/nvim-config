return {
  "lewis6991/gitsigns.nvim",
  enabled = true,
  event = "VeryLazy",
  opts = {
    current_line_blame = true, -- Toggle with :Gitsigns toggle_current_line_blame
    current_line_blame_opts = {
      delay = 300,
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map("n", "]c", gs.next_hunk)
      map("n", "[c", gs.prev_hunk)

      -- Actions
      map("n", "<leader>hs", gs.stage_hunk)
      map("n", "<leader>hr", gs.reset_hunk)
      map("n", "<leader>hb", gs.blame_line)
    end,
  },
}
