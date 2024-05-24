---@diagnostic disable: trailing-space
---@diagnostic disable-next-line: trailing-space
local wezterm = require("wezterm")
local act = wezterm.action
local mod = {}
mod.SUPER = "SUPER"
mod.SUPER_REV = "SUPER|SHIFT"

local config = {}
-- Use config builder object if possible
if wezterm.config_builder then config = wezterm.config_builder() end

-- Settings
config.color_scheme = "Isotope (dark) (terminal.sexy)"
config.font = wezterm.font('JetBrainsMono Nerd Font', { weight = 'Bold', italic = true })
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.window_frame = {
  font_size = 12,
}
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- Dim inactive panes
config.inactive_pane_hsb = {
  saturation = 0.24,
  brightness = 0.5
}

-- Keys
config.keys = {
  {
    key = 'd',
    mods = mod.SUPER,
    action = wezterm.action.SplitPane
        {
          direction = 'Right',
          size = { Percent = 50 }
        }
  },
  {
    key = 'd',
    mods = mod.SUPER_REV,
    action = wezterm.action.SplitPane
        {
          direction = 'Down',
          size = { Percent = 50 }
        }
  },
  {
    key = 'w',
    mods = mod.SUPER,
    action = wezterm.action.CloseCurrentPane
        {
          confirm = false
        }
  },
  { key = 'k', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Up') },
  { key = 'j', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Down') },
  { key = 'h', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Left') },
  { key = 'l', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Right') },
  {
    key = 'k',
    mods = 'CMD',
    action = act.ClearScrollback 'ScrollbackAndViewport',
  },
  { key = 'n', mods = mod.SUPER_REV, action = act.ToggleFullScreen },
  { key = '[', mods = mod.SUPER,     action = act.ActivateTabRelative(-1) },
  { key = ']', mods = mod.SUPER,     action = act.ActivateTabRelative(1) },
  { key = '[', mods = mod.SUPER_REV, action = act.MoveTabRelative(-1) },
  { key = ']', mods = mod.SUPER_REV, action = act.MoveTabRelative(1) },

  -- copy/paste --
     { key = 'c', mods = 'CTRL|SHIFT',  action = act.CopyTo('Clipboard') },
     { key = 'v', mods = 'CTRL|SHIFT',  action = act.PasteFrom('Clipboard') },
}

return config
