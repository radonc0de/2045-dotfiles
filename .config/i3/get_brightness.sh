#!/bin/bash

max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
unrounded=$(echo "($brightness/$max_brightness*100)" | bc -l)
echo $unrounded | awk '{ printf "🔆 %.2f%\n", $1 }' 
