return {
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "olimorris/neotest-rspec",
    },
    opts = {
      -- Can be a list of adapters like what neotest expects,
      -- or a list of adapter names,
      -- or a table of adapter names, mapped to adapter configs.
      -- The adapter will then be automatically loaded with the config.
      adapters = {
        ["neotest-rspec"] = {
          -- Here you can specify custom options for neotest-rspec
          rspec_cmd = function()
            return vim.tbl_flatten({
              "bundle",
              "exec",
              "rspec",
            })
          end,
        },
      },
    },
    -- Uncomment the following lines if you want to add key mappings
    -- keys = {
    --   { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
    --   { "<leader>tr", function() require("neotest").run.run() end, desc = "Run Nearest" },
    --   { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
    --   { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
    --   { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
    --   { "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop" },
    -- },
  },
}
