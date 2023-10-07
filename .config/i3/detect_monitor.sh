#!/bin/bash

mon_connected=$(xrandr --query | grep ' connected' | grep '3440x1440' | wc -l)
if [ $mon_connected = '1' ]; then
    /home/keithl/.screenlayout/monitor-alone.sh

else
    /home/keithl/.screenlayout/laptop-alone.sh
fi
