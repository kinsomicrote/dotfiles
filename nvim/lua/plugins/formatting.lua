-- return {
--   "stevearc/conform.nvim",
--   optional = true,
--   opts = {
--     formatters_by_ft = {
--       ["javascript"] = { "biome" },
--       ["typescript"] = { "biome" },
--       ["javascriptreact"] = { "biome" },
--       ["typescriptreact"] = { "biome" },
--       ["css"] = { "biome" },
--       ["html"] = { "htmlbeautifier" },
--       ["eruby"] = { "htmlbeautifier" }, -- Use htmlbeautifier for .erb files
--       ["erb"] = { "htmlbeautifier" }, -- Also include 'erb' filetype for compatibility
--       ["json"] = { "biome" },
--       ["yaml"] = { "biome" },
--       ["markdown"] = { "biome" },
--       ["lua"] = { "stylua" },
--       ["ruby"] = { "standardrb" },
--       ["env"] = {},
--     },
--     formatters = {
--       htmlbeautifier = {
--         command = "htmlbeautifier",
--         args = { "--indent-by", "2" },
--       },
--     },
--     filetype_detect = {
--       ["env"] = function(bufnr)
--         return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":e") == "env"
--       end,
--     },
--   },
-- }
return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
      ["javascript"] = { "biome" },
      ["typescript"] = { "biome" },
      ["javascriptreact"] = { "biome" },
      ["typescriptreact"] = { "biome" },
      ["css"] = { "biome" },
      ["html"] = { "erb_format", "biome" },
      ["json"] = { "biome" },
      ["yaml"] = { "biome" },
      ["markdown"] = { "biome" },
      ["lua"] = { "stylua" },
      ["ruby"] = { "standardrb" },
      ["eruby"] = { "erb_format" },
    })

    opts.formatters = vim.tbl_deep_extend("force", opts.formatters or {}, {
      erb_formatter = {
        command = "erb-format",
        args = { "--stdin" },
      },
    })

    opts.filetype_detect = vim.tbl_deep_extend("force", opts.filetype_detect or {}, {
      ["env"] = function(bufnr)
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":e") == "env"
      end,
    })

    return opts
  end,
}
