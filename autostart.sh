#!/bin/sh
/home/shaw/.scripts/battery_notify &
autorandr -c
# stalonetray &
sxhkd &
picom --experimental-backend &
flameshot &
nm-applet --no-agent &
volctl &

/usr/bin/xmodmap /home/shaw/.Xmodmap &

# feh --bg-fill /home/shaw/Downloads/wallpaper_redcirclesun.jpg
feh --bg-fill /home/shaw/.wallpapers/wallpaper_tj_holowaychuk_unsplash.jpg


