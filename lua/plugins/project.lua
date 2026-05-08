return {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup({
      opts = {
        manual_mode = true,
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "CMakeLists.txt", "package.json" },
      },
    })
  end,
}
