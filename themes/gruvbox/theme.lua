local env = require("config-env")
local dpi = require("beautiful.xresources").apply_dpi

local base00 = "#1d2021"
local base01 = "#3c3836"
local base02 = "#504945"
local base03 = "#665c54"
local base04 = "#bdae93"
local base05 = "#d5c4a1"
local base06 = "#ebdbb2"
local base07 = "#fbf1c7"
local base08 = "#fb4934"
local base09 = "#fe8019"
local base0A = "#fabd2f"
local base0B = "#b8bb26"
local base0C = "#8ec07c"
local base0D = "#83a598"
local base0E = "#d3869b"
local base0F = "#d65d0e"

local theme = {}
    theme.name = "gruvbox"
    theme.wallpaper = env.themesdir .. theme.name .. "/wallpaper.png"

    theme.font = "SauceCodePro Nerd Font Mono 12"

    theme.foreground  = base05
    theme.background  = base00
    theme.cursorColor = base05
    theme.border      = base00

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
