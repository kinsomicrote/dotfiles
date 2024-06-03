-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- override lazyvim root path to current path.
-- fixes issues in monorepos
-- https://github.com/LazyVim/LazyVim/issues/704
vim.g.root_spec = { "cwd" }

local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.spell = true
opt.swapfile = false
