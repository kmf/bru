-- bru-espresso — a lekker colorscheme
-- https://github.com/kmf/bru

return {
  foreground    = "#f5e8c7",
  background    = "#1c1814",
  cursor_bg     = "#dbb32d",
  cursor_fg     = "#1c1814",
  cursor_border = "#dbb32d",

  selection_fg  = "#fbf3db",
  selection_bg  = "#322b23",

  scrollbar_thumb = "#3a332b",
  split           = "#3a332b",

  ansi = {
    "#1c1814", -- black
    "#fa5750", -- red
    "#75b938", -- green
    "#dbb32d", -- yellow
    "#4695f7", -- blue
    "#f275be", -- magenta
    "#41c7b9", -- cyan
    "#f5e8c7", -- white
  },
  brights = {
    "#3a332b", -- bright black
    "#ff665c", -- bright red
    "#84c747", -- bright green
    "#ebc13d", -- bright yellow
    "#58a3ff", -- bright blue
    "#ff84cd", -- bright magenta
    "#53d6c7", -- bright cyan
    "#fbf3db", -- bright white
  },

  tab_bar = {
    background = "#1c1814",
    active_tab = {
      bg_color = "#26211c",
      fg_color = "#dbb32d",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#1c1814",
      fg_color = "#8a7f6f",
    },
    inactive_tab_hover = {
      bg_color = "#26211c",
      fg_color = "#f5e8c7",
    },
    new_tab = {
      bg_color = "#1c1814",
      fg_color = "#8a7f6f",
    },
  },
}
