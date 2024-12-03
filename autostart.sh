#!/bin/bash

killall battery_notify
killall sxhkd 
killall picom 
killall flameshot 
killall nm-applet
killall volctl 
killall clipster

sleep 1s


/home/shaw/.config/scripts/battery_notify &
# stalonetray &
sxhkd &
picom &
flameshot &
nm-applet --no-agent &
volctl &
clipster -d & 

# /home/shaw/.scripts/switchToDockedAutorandr & 

sleep 1s;
blueberry-tray

sleep 15s;
/usr/bin/xmodmap /home/shaw/.Xmodmap &

# a2ln --title-format "Phone Notification: {title} ({app})" &
# feh --bg-fill /home/shaw/Downloads/wallpaper_redcirclesun.jpg
# feh --bg-fill /home/shaw/.wallpapers/wallpaper_tj_holowaychuk_unsplash.jpg

# dunst &
#feh --bg-fill ~/Downloads/wallpaper_frequency.png


