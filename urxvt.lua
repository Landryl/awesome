-- Module to refresh URxvt configuration upong receiving a xrdb update
-- URxvt must have config-reload extension installed

local urxvt = {}

function urxvt.refresh()
    awful.spawn.with_shell("for pid in `ps -C urxvt | tail --lines=+2 | grep -Po ^\\ \\*\\[0-9\\]+`; do kill -s HUP $pid done")
end

return urxvt
