local xrdb = require("xrdb")

-- When the theme manager changes the theme, exports to xrdb
awesome.connect_signal("theme::update", function()
    xrdb.export()
end)

local urxvt = require("urxvt")

-- When xrdb gets updated, ask open urxvt windows to reload colors
awesome.connect_signal("xrdb::update", function()
    urxvt.reload()
end)

local naughty = require("naughty")

-- When statusbar detects low battery level, send a notification
awesome.connect_signal("statusbar::low_battery", function()
    naughty.notify({
        text = "Less than 10% remaining",
        title = "Warning low battery",
        timeout = 0
    })
end)
