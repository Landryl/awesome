local gears = require("gears")
local awful = require("awful")

local mod = "Mod1"

globalkeys = gears.table.join(
    awful.key({mod, "Shift"}, "e", awesome.quit,
              {description = "Quit Awesome", group = "Awesome"}),
    awful.key({mod, "Shift"}, "Return",
        function()
            awful.spawn("urxvt", {screen = awful.screen.focused() })
        end,
        {description = "Open a terminal", group = "Launcher"})
)

root.keys(globalkeys)
