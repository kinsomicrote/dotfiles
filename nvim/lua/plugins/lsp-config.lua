local lspconfig = require("lspconfig")
return {
  "neovim/nvim-lspconfig",
  opts = {
    format_notify = true,
    inlay_hints = { enabled = true },
    servers = {
      standardrb = {
        cmd = { os.getenv("HOME") .. "/.asdf/shims/standardrb", "--lsp" },
      },
      ruby_lsp = {
        -- cmd = { os.getenv("HOME") .. "/.asdf/shims/ruby-lsp" },
        settings = {
          rubyLsp = {
            inlay_hints = {
              enabled = true,
            },
          },
        },
      },
      solargraph = {
        -- autostart = false,
        formatting = false,
        diagnostics = false,
        settings = {
          solargraph = {
            diagnostics = false,
            formatting = false,
            useBundler = false,
            commandPath = "",
            config = {
              disabled = { "rubocop" },
            },
            inlay_hints = {
              enabled = true,
            },
          },
        },
      },
    },
  },
}
