-- return {
--   "mfussenegger/nvim-lint",
--   event = { "BufReadPre", "BufNewFile", "InsertLeave" },
--   config = function()
--     local lint = require("lint")
--     lint.linters_by_ft = {
--       javascript = { "biomejs" },
--       typescript = { "biomejs" },
--       javascriptreact = { "biomejs" },
--       typescriptreact = { "biomejs" },
--       vue = { "biomejs" }, -- Add this line for Vue
--       ruby = { "standardrb" },
--       erb = { "erb_lint" },
--     }
--
--     -- Move the autocmd and keymap setup to a separate function
--     local function setup_lint_autocmds_and_keymaps()
--       local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
--       vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
--         group = lint_augroup,
--         callback = function()
--           lint.try_lint()
--         end,
--       })
--       vim.keymap.set("n", "<leader>z", function()
--         lint.try_lint()
--       end, { desc = "Trigger linting for current file" })
--     end
--
--     -- Call the setup function
--     setup_lint_autocmds_and_keymaps()
--
--     -- Add this to allow project-specific overrides
--     vim.api.nvim_create_autocmd("User", {
--       pattern = "ProjectLocalLoaded",
--       callback = function()
--         -- This will be called after the project-local settings are loaded
--         setup_lint_autocmds_and_keymaps()
--       end,
--     })
--   end,
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
      vue = { "biomejs" },
      ruby = { "standardrb" },
      eruby = { "erb_lint" },
      html = { "htmlhint", "erb_lint" }, -- Added HTML linting
    }

    local function setup_lint_autocmds_and_keymaps()
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
    end

    setup_lint_autocmds_and_keymaps()

    vim.api.nvim_create_autocmd("User", {
      pattern = "ProjectLocalLoaded",
      callback = function()
        setup_lint_autocmds_and_keymaps()
      end,
    })
  end,
}
