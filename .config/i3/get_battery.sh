#!/bin/bash

#capacity=$(cat /sys/class/power_supply/BAT1/capacity)
acpi=$(acpi -i | grep -E '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]')
time=$(acpi -i | grep -o -E '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]')
status=$(echo "$acpi" | awk '{print $3}')
capacity=$(acpi -i | grep -o -E '[0-9]*%' | head -n 1 | awk '{sub("%", ""); print $0}')
#status=$(cat /sys/class/power_supply/BAT1/status)

if [ $status = "Charging" ]; then
    echo 🔋⚡ $capacity $time
elif [ "$capacity" -le 15 ]; then 
    echo 🪫⚠️ $capacity $time
elif [ "$capacity" -le 30 ]; then 
    echo 🪫 $capacity $time
else 
    echo 🔋 $capacity $time
    
fi

