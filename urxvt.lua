-- Module to refresh URxvt configuration upong receiving a xrdb update
-- URxvt must have config-reload extension installed

local awful = require("awful")

local urxvt = {}

function urxvt.reload()
    awful.spawn.with_shell("for pid in `ps -C urxvt | tail --lines=+2 | grep -Po ^\\ \\*\\[0-9\\]+`; do kill -s HUP $pid \n done")
end

return urxvt
