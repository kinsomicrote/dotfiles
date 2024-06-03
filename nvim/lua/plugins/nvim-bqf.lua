-- return {
--   "kevinhwang91/nvim-bqf",
--   ft = "qf",
--   opts = {
--     auto_enable = true,
--     preview = {
--       win_height = 12,
--       win_vheight = 12,
--       delay_syntax = 80,
--       border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
--     },
--     func_map = {
--       vsplit = "",
--       ptogglemode = "z,",
--       stoggleup = "",
--     },
--     filter = {
--       fzf = {
--         action_for = { ["ctrl-s"] = "split" },
--         extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
--         fuzzy = true,
--       },
--     },
--   },
-- }
--
-- Make the quickfix list greattt.
return {
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
    opts = {
      func_map = { split = "<C-s>" },
    },
  },
}
