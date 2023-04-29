#!/bin/bash

acpi=$(acpi -i | grep -v unavailable | grep -E '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]')
time=$(echo "$acpi" | grep -o -E '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]')
status=$(echo "$acpi" | awk '{print $3}')
capacity=$(echo "$acpi" | grep -o -E '[0-9]*%' | head -n 1 | awk '{sub("%", ""); print $0}')

if [ $status = "Charging," ]; then
    echo 🔋⚡ $capacity% $time
elif [ "$capacity" -le 20 ]; then 
    echo 🪫⚠️ $capacity% $time
elif [ "$capacity" -le 30 ]; then 
    echo 🪫 $capacity% $time
else 
    echo 🔋 $capacity% $time
    
fi

