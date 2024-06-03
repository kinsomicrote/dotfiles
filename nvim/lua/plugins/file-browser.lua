return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    vim.keymap.set("n", ";f", ":Telescope file_browser<cr>", { desc = "File Browser" })
  end,
}
