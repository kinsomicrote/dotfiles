-- return {
--   "mfussenegger/nvim-lint",
--   event = { "BufReadPre", "BufNewFile", "InsertLeave" },
--   config = function()
--     local lint = require("lint")
--
--     lint.linters_by_ft = {
--       javascript = { "biomejs" },
--       typescript = { "biomejs" },
--       javascriptreact = { "biomejs" },
--       typescriptreact = { "biomejs" },
--       ruby = { "standardrb" },
--       erb = { "erb-lint" },
--     }
--
--     local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
--
--     vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
--       group = lint_augroup,
--       callback = function()
--         lint.try_lint()
--       end,
--     })
--
--     vim.keymap.set("n", "<leader>z", function()
--       lint.try_lint()
--     end, { desc = "Trigger linting for current file" })
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
      vue = { "biomejs" }, -- Add this line for Vue
      ruby = { "standardrb" },
      erb = { "erb-lint" },
    }

    -- Move the autocmd and keymap setup to a separate function
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

    -- Call the setup function
    setup_lint_autocmds_and_keymaps()

    -- Add this to allow project-specific overrides
    vim.api.nvim_create_autocmd("User", {
      pattern = "ProjectLocalLoaded",
      callback = function()
        -- This will be called after the project-local settings are loaded
        setup_lint_autocmds_and_keymaps()
      end,
    })
  end,
}
