local awful = require("awful")
local beautiful = require("beautiful")

rules = {}

function rules:init(keys)
    local clientkeys = keys.client
    local clientbuttons = keys.clientbuttons

    awful.rules.rules =
        {
            { -- Rules for all clients
                rule = {},
                properties = {
                    raise = true,
                    focus = awful.client.focus.filter,
                    keys = clientkeys,
                    buttons = clientbuttons,
                    border_width = beautiful.border_width,
                    border_color = beautiful.border_normal,
                    size_hints_honor = false
                }
            }
        }
end

return rules
