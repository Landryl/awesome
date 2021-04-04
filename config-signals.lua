local xrdb = require("xrdb")
local urxvt = require("urxvt")

awesome.connect_signal("theme::update", function()
    xrdb.export()
end)

awesome.connect_signal("xrdb::update", function()
    urxvt.reload()
end)
