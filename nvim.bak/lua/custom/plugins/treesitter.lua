return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    build = ':TSUpdate',
    dependencies = {
      'windwp/nvim-ts-autotag',
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require 'nvim-treesitter.configs'

      -- configure treesitter
      treesitter.setup { -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        -- ensure these language parsers are installed
        ensure_installed = {
          'json',
          'javascript',
          'typescript',
          'tsx',
          'yaml',
          'html',
          'css',
          'ruby',
          'markdown',
          'markdown_inline',
          'bash',
          'lua',
          'vim',
          'dockerfile',
          'gitignore',
          'query',
          'vimdoc',
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<C-space>',
            node_incremental = '<C-space>',
            scope_incremental = false,
            node_decremental = '<bs>',
          },
        },
      }
    end,
  },
  {
    'HiPhish/rainbow-delimiters.nvim',
    --   init = function()
    --     local rainbow_delimiters = require 'rainbow-delimiters'
    --
    --     vim.g.rainbow_delimiters = {
    --       strategy = {
    --         [''] = rainbow_delimiters.strategy['global'],
    --       },
    --       query = {
    --         [''] = 'rainbow-delimiters',
    --         lua = 'rainbow-blocks',
    --         ruby = 'rainbow_delimiters',
    --         tsx = 'rainbow-parens',
    --         html = 'rainbow-parens',
    --         javascript = 'rainbow-delimiters-react',
    --       },
    --       highlight = {
    --         'RainbowDelimiterRed',
    --         'RainbowDelimiterYellow',
    --         'RainbowDelimiterBlue',
    --         'RainbowDelimiterOrange',
    --         'RainbowDelimiterGreen',
    --         'RainbowDelimiterViolet',
    --         'RainbowDelimiterCyan',
    --       },
    --     }
    --   end,
  },
}
