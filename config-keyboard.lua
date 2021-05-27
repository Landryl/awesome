local gears = require("gears")
local awful = require("awful")

local mod = "Mod4"

globalkeys = gears.table.join(
    awful.key({mod, "Shift"}, "e", awesome.quit,
              {description = "Quit Awesome", group = "Awesome"}),
    awful.key({mod}, "Return",
        function()
            awful.spawn("urxvt", {screen = awful.screen.focused() })
        end,
        {description = "Open a terminal", group = "Launcher"}),

    -- Layout management
    awful.key({ mod }, "j", function () awful.client.focus.byidx(1) end,
              { description = "Focus to next window by index",
                group = "Layout" }),
    awful.key({ mod }, "k", function () awful.client.focus.byidx(-1) end,
              { description = "Focus to previous window by index",
                group = "Layout" }),
    awful.key({ mod }, "h", function () awful.tag.incmwfact(0.05) end,
              { description = "Increase master width factor",
                group = "Layout" }),
    awful.key({ mod }, "l", function () awful.tag.incmwfact(-0.05) end,
              { description = "Decrease master width factor",
                group = "Layout" }),
    awful.key({ mod, "Shift" }, "j", function() awful.client.swap.byidx(1) end,
              { description = "Swap client with next by index", group = "Layout" }),
    awful.key({ mod, "Shift" }, "k", function() awful.client.swap.byidx(-1) end,
              { description = "Swap client with next by index", group = "Layout" })
)

root.keys(globalkeys)
