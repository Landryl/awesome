-- Colors from http://chriskempson.com/projects/base16/
-- Wallpaper from https://wallpapercave.com/w/wp4448000 (recolored)

local env = require("config-env")
local dpi = require("beautiful.xresources").apply_dpi

local base00 = "#181818"
local base01 = "#282828"
local base02 = "#383838"
local base03 = "#585858"
local base04 = "#b8b8b8"
local base05 = "#d8d8d8"
local base06 = "#e8e8e8"
local base07 = "#f8f8f8"
local base08 = "#ab4642"
local base09 = "#dc9656"
local base0A = "#f7ca88"
local base0B = "#a1b56c"
local base0C = "#86c1b9"
local base0D = "#7cafc2"
local base0E = "#ba8baf"
local base0F = "#a16946"

local theme = {}
    theme.name = "base16"
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

    theme.useless_gap = dpi(3)

return theme
