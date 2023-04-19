#!/bin/bash

# Get the volume and mute status of the default sink
volume=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | awk '{print $5}' | sed 's/[%|]//g')
mute=$(pactl list sinks | grep '^[[:space:]]Mute:' | head -n 1 | awk '{print $2}')

# Check the volume range and mute status, and output "A", "B", "C", or "D" accordingly
if [[ "$mute" == "yes" ]]; then
    echo "🔇 $volume%"
elif [[ "$volume" -ge 0 && "$volume" -le 20 ]]; then
    echo "🔈 $volume%"
elif [[ "$volume" -gt 20 && "$volume" -le 60 ]]; then
    echo "🔉 $volume%"
else
    echo "🔊 $volume%"
fi
