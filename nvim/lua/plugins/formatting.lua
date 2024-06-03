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
    },
  },
}
