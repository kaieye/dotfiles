local wezterm = require 'wezterm'
local commands = require 'commands'
local constants = require 'constants'
local config = wezterm.config_builder()

-- Font settings
config.font_size = 12
config.line_height = 1.1
config.font = wezterm.font {
  family = 'JetBrainsMono Nerd Font',
}
config.font_rules = {
  {
    italic = true,
    font = wezterm.font('JetBrainsMono Nerd Font', {
      italic = true,
    }),
  },
}

-- Colors
config.colors = require 'cyberdream'

-- Appearance
config.cursor_blink_rate = 0
config.window_decorations = 'RESIZE'
-- config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_opacity = 40
config.window_background_image = constants.bg_image
-- Miscellaneous settings
config.max_fps = 120
config.prefer_egl = true

-- Custom commands
wezterm.on('augment-command-palette', function()
  return commands
end)

return config
