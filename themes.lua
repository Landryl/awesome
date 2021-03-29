-- A simple wrapper around beautiful to trigger a signal when the theme changes

local beautiful = require("beautiful")

local themes = {}

function themes.set(theme)
    local path = "themes/" .. theme .. "/theme.lua"
    beautiful.init(path)
    awesome.emit_signal("theme::update")
end

return themes
