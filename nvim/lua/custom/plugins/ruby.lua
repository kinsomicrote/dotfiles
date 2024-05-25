return {
  {
    'RRethy/nvim-treesitter-endwise',
    event = 'InsertEnter',
  },
  {
    'tpope/vim-rails',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'tpope/vim-abolish',
      'tpope/vim-bundler',
      'tpope/vim-endwise',
      'tpope/vim-dispatch',
    },
    config = function()
      -- disable autocmd set filetype=eruby.yaml
      vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufReadPost' }, {
        pattern = { '*.yml' },
        callback = function()
          vim.bo.filetype = 'yaml'
        end,
      })
    end,
  },
}
