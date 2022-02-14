local gears = require("gears")
local awful = require("awful")

local ts = require("theme-switcher")

local mod = "Mod1"

keys = {}

keys.global = gears.table.join(
    awful.key({mod, "Shift"}, "e", awesome.quit,
              {description = "Quit Awesome", group = "Awesome"}),
    awful.key({ mod, "Shift" }, "r", awesome.restart,
              { description = "Restart Awesome", group = "Awesome"}),

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
              { description = "Swap client with next by index", group = "Layout" }),

    awful.key({ mod }, "t", function() ts.launch() end)
)

-- TODO move elsewhere ?
root.keys(keys.global)

keys.client = gears.table.join(
    awful.key({ mod, "Shift" }, "a", function(c) c:kill() end,
              { description = "Close client", group = "Client" }),
    awful.key({ mod }, "f",
                function(c)
                    c.fullscreen = not c.fullscreen
                    c:raise()
                end,
              {description = "Toggle fullscreen", group = "Client" }),
    awful.key({ mod, "Shift" }, "f", awful.client.floating.toggle,
              { description = "Toggle floating", group = "Client" }),
    awful.key({ mod, "Shift" }, "p", function (c) c:move_to_screen() end,
              { description = "Move to screen", group = "Layout"})
)

-- TODO move elsewhere ?
keys.clientbuttons = gears.table.join(
    awful.button({ }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
    end),
    awful.button({ mod }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.move(c)
    end),
    awful.button({ mod }, 3, function(c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)

return keys
