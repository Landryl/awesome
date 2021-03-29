local gears = require("gears")
local awful = require("awful")

local mod = "Mod1"

globalkeys = gears.table.join(
    awful.key({ mod, "Shift" }, "e", awesome.quit,
              { description = "Quit Awesome", group = "Awesome"})
)

root.keys(globalkeys)
