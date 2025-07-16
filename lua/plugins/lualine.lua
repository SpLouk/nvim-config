return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    -- This accesses the default opts that LazyVim provides
    -- You can now modify specific parts of opts

    -- For example, to modify sections:
    opts.sections.lualine_z = {}

    return opts
  end,
}
