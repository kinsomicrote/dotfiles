-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("icons")
require("lightbulb")
vim.o.background = "dark"
local project_nvim_lua = vim.fn.getcwd() .. "/.nvim.lua"
if vim.fn.filereadable(project_nvim_lua) == 1 then
  vim.cmd("luafile " .. project_nvim_lua)
end
