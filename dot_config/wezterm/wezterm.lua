local wezterm = require 'wezterm'

local config = {}


-- Some defaults

if wezterm.config_builder then config = wezterm.config_builder() end

config.hyperlink_rules = wezterm.default_hyperlink_rules()

-- Core

config.default_prog = { 'fish', '-l' }


-- Keybindings

local actions = wezterm.action

config.keys = {
  { key = 'F1',  mods = 'NONE',       action = actions.ActivateCommandPalette },
  { key = 'c',   mods = 'CTRL|SHIFT', action = actions.CopyTo 'Clipboard' },
  { key = 'p',   mods = 'CTRL|SHIFT', action = actions.PasteFrom 'Clipboard' },
  { key = 'F11', mods = 'NONE',       action = actions.ToggleFullScreen, },
  { key = 'q',   mods = 'CTRL|SHIFT', action = actions.QuitApplication },
  { key = 'w',   mods = 'ALT',        action = actions.ShowLauncherArgs { flags = "FUZZY|WORKSPACES" } },
}


-- UI Customizations

config.color_scheme = 'Vs Code Dark+ (Gogh)'

config.window_frame = {
  font = wezterm.font { family = 'Ubuntu' }
}

config.window_background_opacity = 0.75

config.tab_bar_at_bottom = true

config.hide_tab_bar_if_only_one_tab = true

config.inactive_pane_hsb = { brightness = 0.5 }

config.use_dead_keys = false

config.adjust_window_size_when_changing_font_size = false

config.scrollback_lines = 10000

return config
