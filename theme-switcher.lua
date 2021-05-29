local themes = require("themes")
local beautiful = require("beautiful")
local PopupMenu = require("lib.popupmenu")

local ts = {}

function ts.launch()
    local menu = PopupMenu.new()
    local items = {}
    local selected = 1
    local themeslist = themes.list()
    for i,theme in ipairs(themeslist) do
        items[#items + 1] = {
            text = theme,
            action = function()
                themes.set(theme)
                menu:recolor()
            end
        }
        if beautiful.name == theme then
            selected = i
        end
    end
    menu:display({
        items = items,
        selected = selected
    })
end

return ts
