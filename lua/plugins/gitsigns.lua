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
      map("n", "]h", gs.next_hunk, { desc = "Next hunk" })
      map("n", "[h", gs.prev_hunk, { desc = "Previous hunk" })

      -- Actions
      map("n", "<leader>hs", gs.stage_hunk, { desc = "Stage this hunk" })
      map("n", "<leader>hr", gs.reset_hunk, { desc = "Reset this hunk" })
      map("n", "<leader>hb", gs.blame_line, { desc = "Show blame for this line" })
      map("n", "<leader>hp", gs.preview_hunk_inline, { desc = "Preview hunk inline" })
    end,
  },
}
