-- Module to export beautiful variables to xrdb

local beautiful = require("beautiful")

local xrdb = {}

function xrdb.export()
    awesome.emit_signal("xrdb::update")
end

return xrdb
