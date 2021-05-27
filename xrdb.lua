-- Module to export beautiful variables to xrdb

local beautiful = require("beautiful")

local xrdb = {}

function xrdb.export()
    local p = io.popen("xrdb -merge", "w")

    export_list = {'foreground', 'background', 'cursorColor'}
    for i=0,21 do
        table.insert(export_list, 'color' .. tostring(i))
    end

    for n,val in pairs(export_list) do
        if beautiful[val] then
            p:write("*" .. val .. ":" .. beautiful[val] .. "\n")
        end
    end

    p:close()
    awesome.emit_signal("xrdb::update")
end

return xrdb
