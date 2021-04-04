gdebug = require("gears").debug

-- Loading themes
local themes = require("themes")
themes.set(themes.list()[1])

-- Loading screens configuration
require("config-screen")

-- Loadding keyboard bindings
require("config-keyboard")

-- Loading additional signals hookings
require("config-signals")
