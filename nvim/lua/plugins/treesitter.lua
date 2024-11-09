return {

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruby",
        "html",
        "embedded_template",
      })
    end,
    dependencies = {
      "windwp/nvim-ts-autotag", -- Without this dependency set, auto tag completion would not work... for me
    },
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
}
