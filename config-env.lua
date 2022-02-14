local env = {}

env.modkey = "Mod1"
env.terminal = "urxvt"
env.theme = "base16"
env.home = os.getenv("HOME")
env.themesdir = env.home .. "/.config/awesome/themes/"
env.tags = {
    "terms",
    "web",
    "dev",
    "doc",
    "5",
    "6",
    "7",
    "1password",
    "slack"
}
env.autostart = {
    "picom --config " .. env.home .. "/.config/picom/picom.conf"
}

return env
