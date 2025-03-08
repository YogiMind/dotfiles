-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dracula'
config.font = wezterm.font("Commit Mono Nerd Font Mono")
config.font_size = 12

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

--config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config
