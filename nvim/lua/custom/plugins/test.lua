return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'olimorris/neotest-rspec',
  },
  config = function()
    adapters = {
      require 'neotest-rspec' {
        rspec_cmd = { 'bundle', 'exec', 'rspec' },
      },
    }
  end,
}
