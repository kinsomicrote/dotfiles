local lspconfig = require("lspconfig")
return {
  "neovim/nvim-lspconfig",
  opts = {
    format_notify = true,
    inlay_hints = { enabled = true },
    servers = {
      -- solargraph = {
      --   root_dir = function(fname)
      --     return require("lspconfig").util.root_pattern("Gemfile", ".git")(fname) or vim.fn.getcwd()
      --   end,
      --   cmd = { os.getenv("HOME") .. "/.asdf/shims/solargraph", "stdio" },
      -- },
      standardrb = {
        cmd = { os.getenv("HOME") .. "/.asdf/shims/standardrb", "--lsp" },
      },
      ruby_lsp = {
        cmd = { os.getenv("HOME") .. "/.asdf/shims/ruby-lsp" },
      },
      -- rubocop = {
      --   cmd = { "bundle", "exec", "rubocop", "--lsp" },
      --   root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
      -- },
    },
    -- settings = {
    --   standardrb = {
    --     autoformat = true,
    --     formatting = true,
    --     format = true,
    --   },
    -- },
  },
}
