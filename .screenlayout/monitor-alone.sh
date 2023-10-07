#!/bin/sh
xrandr --output eDP-1 --off --output DP-2 --primary --mode 3440x1440 --pos 0x0 --rotate normal --output DP-1 --off --output DP-3 --off --output DP-4 --off
cp /home/keithl/.config/alacritty/alacritty-monitor-alone.yml /home/keithl/.config/alacritty/alacritty.yml
feh --bg-scale /home/keithl/Pictures/Wallpapers/mountains-wide.png
