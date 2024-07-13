return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["javascript"] = { "biome" },
      ["typescript"] = { "biome" },
      ["javascriptreact"] = { "biome" },
      ["typescriptreact"] = { "biome" },
      ["css"] = { "biome" },
      ["html"] = { "biome" },
      ["json"] = { "biome" },
      ["yaml"] = { "biome" },
      ["markdown"] = { "biome" },
      ["lua"] = { "stylua" },
      ["ruby"] = { "standardrb" },
      ["erb"] = { "erb-formatter" },
      ["env"] = {},
    },
    filetype_detect = {
      ["env"] = function(bufnr)
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":e") == "env"
      end,
    },
  },
}
