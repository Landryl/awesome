-- A simple wrapper around beautiful to trigger a signal when the theme changes

local beautiful = require("beautiful")

local themes = {}

function themes.set(theme)
    local path = "~/.config/awesome/themes/" .. theme .. "/theme.lua"
    beautiful.init(path)
    awesome.emit_signal("theme::update")
end

function themes.list()
    local list = {}
    local f = io.popen("ls ~/.config/awesome/themes")
    if f then
        item = f:read()
        while item do
            table.insert(list, item)
            item = f:read()
        end
    else
        gdebug.print_error("Failed list themes")
    end
    return list
end

return themes
