-- return {
--   {
--     "mfussenegger/nvim-lint",
--     event = "LazyFile",
--     opts = {
--       -- Event to trigger linters
--       events = { "BufWritePost", "BufReadPost", "InsertLeave" },
--       linters_by_ft = {
--         javascript = { "biomejs" },
--         typescript = { "biomejs" },
--         javascriptreact = { "biomejs" },
--         typescriptreact = { "biomejs" },
--         ruby = { "standardrb" },
--         erb = { "erb-lint" },
--       },
--     },
--   },
-- }
return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile", "InsertLeave" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "biomejs" },
      typescript = { "biomejs" },
      javascriptreact = { "biomejs" },
      typescriptreact = { "biomejs" },
      ruby = { "standardrb" },
      erb = { "erb-lint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>z", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
