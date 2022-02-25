local env = require("config-env")
local dpi = require("beautiful.xresources").apply_dpi

local base00 = "#151515"
local base01 = "#202020"
local base02 = "#303030"
local base03 = "#505050"
local base04 = "#b0b0b0"
local base05 = "#d0d0d0"
local base06 = "#e0e0e0"
local base07 = "#f5f5f5"
local base08 = "#fb9fb1"
local base09 = "#eda987"
local base0A = "#ddb26f"
local base0B = "#acc267"
local base0C = "#12cfc0"
local base0D = "#6fc2ef"
local base0E = "#e1a3ee"
local base0F = "#deaf8f"

local theme = {}
    theme.name = "chalk"
    theme.wallpaper = env.themesdir .. theme.name .. "/wallpaper.png"

    theme.font = "SauceCodePro Nerd Font Mono 12"

    theme.foreground  = base05
    theme.background  = base00
    theme.cursorColor = base05
    theme.border       = base00

    theme.color0      = base00
    theme.color1      = base08
    theme.color2      = base0B
    theme.color3      = base0A
    theme.color4      = base0D
    theme.color5      = base0E
    theme.color6      = base0C
    theme.color7      = base05
    theme.color8      = base03
    theme.color9      = base08
    theme.color10     = base0B
    theme.color11     = base0A
    theme.color12     = base0D
    theme.color13     = base0E
    theme.color14     = base0C
    theme.color15     = base07
    theme.color16     = base09
    theme.color17     = base0F
    theme.color18     = base01
    theme.color19     = base02
    theme.color20     = base04
    theme.color21     = base06

    theme.bg_normal = theme.background
    theme.fg_normal = theme.foreground

    theme.bg_focus    = base02
    theme.fg_focus    = base05

    theme.border_width = 0
    theme.border_color = theme.bg_normal

    theme.useless_gap = dpi(3)

return theme
