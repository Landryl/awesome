local gears = require("gears")
local awful = require("awful")

local ts = require("theme-switcher")
local pa = require("pulseaudio")

local mod = "Mod1"

keys = {}

keys.global = gears.table.join(
    awful.key({mod, "Shift"}, "e", awesome.quit,
              {description = "Quit Awesome", group = "Awesome"}),
    awful.key({ mod, "Shift" }, "r", awesome.restart,
              { description = "Restart Awesome", group = "Awesome"}),

    awful.key({ mod }, "d",
        function()
            awful.spawn("rofi -show drun", {screen = awful.screen.focused() })
        end,
        {description = "Launch rofi", group = "Launcher"}),
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

    awful.key({ mod }, "t", function() ts.launch() end),

    awful.key({ }, "XF86MonBrightnessUp",
        function()
            awful.spawn("brightnessctl s +10%")
        end),
    awful.key({ }, "XF86MonBrightnessDown",
        function()
            awful.spawn("brightnessctl s 10%-")
        end),

    awful.key({ }, "XF86AudioRaiseVolume",
        function()
            pa.volume_up(5)
        end),

    awful.key({ }, "XF86AudioLowerVolume",
        function()
            pa.volume_down(5)
        end),

    awful.key({ }, "XF86AudioMute",
        function()
            pa.mute(5)
        end)
)

-- Tags management
for i = 1, 9 do
    keys.global = gears.table.join(keys.global,
        -- View tag only.
        awful.key({ mod }, "#" .. i + 9,
                  function ()
                      local screen = awful.screen.focused()
                      local tag = screen.tags[i]
                      if tag then
                         tag:view_only()
                      end
                  end),
        -- Toggle tag display.
        awful.key({ mod, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = awful.screen.focused()
                      local tag = screen.tags[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end),
        -- Move client to tag.
        awful.key({ mod, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = client.focus.screen.tags[i]
                          if tag then
                              client.focus:move_to_tag(tag)
                          end
                      end
                  end),
        -- Toggle tag on focused client.
        awful.key({ mod, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = client.focus.screen.tags[i]
                          if tag then
                              client.focus:toggle_tag(tag)
                          end
                      end
                  end)
    )
end


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
