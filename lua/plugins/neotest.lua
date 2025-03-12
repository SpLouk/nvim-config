return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "haydenmeade/neotest-jest",
      "olimorris/neotest-rspec",
      "zidhuss/neotest-minitest",
    },
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      
      -- Jest adapter
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "jest.config.js",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      
      -- Minitest adapter for Rails
      table.insert(
        opts.adapters,
        require("neotest-minitest")
      )
      
      return opts
    end,
  },
}
