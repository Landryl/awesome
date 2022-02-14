gdebug = require("gears").debug

-- Loading themes
local themes = require("themes")
themes.set(themes.list()[1])

-- Loading screens configuration
require("config-screen")

-- Loading keyboard bindings
local keys = require("config-keyboard")

-- Loading additional signals hookings
require("config-signals")

-- Loading client rules
local rules = require("config-rules")
rules:init(keys)


xrdb = require("xrdb")
xrdb.export()

require("awful.autofocus")
