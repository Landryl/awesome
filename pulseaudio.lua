local awful = require("awful")

local pa = {}

function pa.get_sink_index()
    local p = io.popen("pacmd list-sinks | grep -e '* index:' | sed 's/.*: //'", "r")
    local str = p:read()
    return str
end

function pa.volume_up(amount)
    awful.spawn("pactl set-sink-volume " .. pa.get_sink_index() .. " +" .. amount .. "%")
end

function pa.volume_down(amount)
    awful.spawn("pactl set-sink-volume " .. pa.get_sink_index() .. " -" .. amount .. "%")
end

function pa.mute()
    awful.spawn("pactl set-sink-mute " .. pa.get_sink_index() .. " toggle")
end

return pa
