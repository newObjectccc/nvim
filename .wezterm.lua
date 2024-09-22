local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.default_prog = { "powershell" }

-- theme
-- config.color_scheme = "Everforest Dark Hard (Gogh)"

-- text
config.font = wezterm.font({
  family = "JetBrains Mono",
  weight = "Bold",
})
config.font_size = 11

-- gui
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- key rebinding
config.leader = { key = "a", mods = "CTRL" }
config.keys = {
  { key = "w", mods = "SHIFT|ALT|CTRL", action = act({ CloseCurrentPane = { confirm = false } }) },
  { key = "s", mods = "LEADER", action = act.PaneSelect },
  {
    key = "s",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "v",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "w",
    mods = "LEADER",
    action = act({ CloseCurrentPane = { confirm = false } }),
  },
  {
    key = "H",
    mods = "LEADER",
    action = act.AdjustPaneSize({ "Left", 5 }),
  },
  {
    key = "J",
    mods = "LEADER",
    action = act.AdjustPaneSize({ "Down", 5 }),
  },
  { key = "K", mods = "LEADER", action = act.AdjustPaneSize({ "Up", 5 }) },
  {
    key = "L",
    mods = "LEADER",
    action = act.AdjustPaneSize({ "Right", 5 }),
  },
}

-- build your config according to
-- https://wezfurlong.org/wezterm/config/lua/wezterm/config_builder.html

-- the plugin is currently made for Catppuccin only
config.color_scheme = "Catppuccin Mocha"

-- then finally apply the plugin
-- these are currently the defaults:
wezterm.plugin.require("https://github.com/nekowinston/wezterm-bar").apply_to_config(config, {
  position = "bottom",
  max_width = 32,
  dividers = "arrows", -- or "slant_left", "arrows", "rounded", false
  indicator = {
    leader = {
      enabled = true,
      off = " ",
      on = " ",
    },
    mode = {
      enabled = true,
      names = {
        resize_mode = "RESIZE",
        copy_mode = "VISUAL",
        search_mode = "SEARCH",
      },
    },
  },
  tabs = {
    numerals = "arabic", -- or "roman"
    pane_count = "superscript", -- or "subscript", false
    brackets = {
      active = { "", ":" },
      inactive = { "", ":" },
    },
  },
})

return config
