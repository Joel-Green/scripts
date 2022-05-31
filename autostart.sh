#!/bin/bash

killall battery_notify
killall sxhkd 
killall picom 
killall flameshot 
killall nm-applet
killall volctl 
killall clipster

sleep 1s


/home/shaw/.scripts/battery_notify &
# stalonetray &
sxhkd &
picom &
flameshot &
nm-applet --no-agent &
volctl &
clipster -d & 

/usr/bin/xmodmap /home/shaw/.Xmodmap &
/home/shaw/.scripts/switchToDockedAutorandr & 

sleep 1s;
teams;

# feh --bg-fill /home/shaw/Downloads/wallpaper_redcirclesun.jpg
# feh --bg-fill /home/shaw/.wallpapers/wallpaper_tj_holowaychuk_unsplash.jpg

# dunst &
#feh --bg-fill ~/Downloads/wallpaper_frequency.png


