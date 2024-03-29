local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local statusbar = require("statusbar")

local env = require("config-env")

local function set_wallpaper(s)
    gears.wallpaper.maximized(beautiful.wallpaper, s, true)
end

local function update_theme(s)
    set_wallpaper(s)
    s.statusbar:recolor()
end

screen.connect_signal("property::geometry", set_wallpaper)

awesome.connect_signal("theme::update", function()
    for s in screen do
        update_theme(s)
    end
end)

awful.screen.connect_for_each_screen(function(s)
    -- Creating a statusbar for each screen
    s.statusbar = statusbar.new(s)

    -- Set layout
    awful.tag.new(env.tags, s, {awful.layout.suit.tile.left})

    update_theme(s)
end)
