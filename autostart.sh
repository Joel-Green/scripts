#!/bin/bash
/home/shaw/.scripts/battery_notify &
# stalonetray &
sxhkd &
picom &
flameshot &
nm-applet --no-agent &
thunar --daemon &
volctl &

/usr/bin/xmodmap /home/shaw/.Xmodmap &
/home/shaw/.scripts/switchToDockedAutorandr & 

# feh --bg-fill /home/shaw/Downloads/wallpaper_redcirclesun.jpg
# feh --bg-fill /home/shaw/.wallpapers/wallpaper_tj_holowaychuk_unsplash.jpg

# dunst &
feh --bg-fill ~/Downloads/wallpaper_frequency.png


