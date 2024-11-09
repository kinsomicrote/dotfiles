local lspconfig = require("lspconfig")
return {
  "neovim/nvim-lspconfig",
  opts = {
    format_notify = true,
    inlay_hints = { enabled = true },
    servers = {
      -- Ruby LSP configuration
      ruby_ls = {
        filetypes = { "ruby", "eruby", "erb" }, -- Explicitly set file types
      },
      -- Keep other server configurations as needed
      standardrb = {
        cmd = { os.getenv("HOME") .. "/.asdf/shims/standardrb", "--lsp" },
      },
      html = {
        filetypes = { "html", "eruby" },
      },
    },
  },
  setup = {
    ruby_ls = function(_, opts)
      local ruby_lsp = require("lspconfig")["ruby_ls"]
      ruby_lsp.setup(vim.tbl_extend("force", ruby_lsp.document_config.default_config, opts))
    end,
  },
}
