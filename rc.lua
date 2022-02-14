gdebug = require("gears").debug

local env = require("config-env")

-- Loading themes
local themes = require("themes")
themes.set(env.theme)

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
