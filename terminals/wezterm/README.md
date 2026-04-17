# bru for WezTerm

## Install

```bash
mkdir -p ~/.config/wezterm/colors
cp bru-espresso.lua ~/.config/wezterm/colors/
cp bru-latte.lua    ~/.config/wezterm/colors/
```

## Activate

In `~/.config/wezterm/wezterm.lua`:

```lua
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.colors = require 'colors/bru-espresso'

-- or with auto light/dark:
local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return require 'colors/bru-espresso'
  else
    return require 'colors/bru-latte'
  end
end
config.colors = scheme_for_appearance(wezterm.gui.get_appearance())

return config
```
