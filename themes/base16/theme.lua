-- Colors from http://chriskempson.com/projects/base16/
-- Wallpaper from https://wallpapercave.com/w/wp4448000 (recolored)

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
    theme.wallpaper = "themes/" .. theme.name .. "/wallpaper.png"

    theme.font = "SauceCodePro Nerd Font Mono 12"

    theme.foreground  = base05
    theme.background  = base00
    theme.cursorColor = base05
    theme.color0      = base00

    theme.bg_normal = theme.background
    theme.fg_normal = theme.foreground

    theme.useless_gap = dpi(3)

return theme
