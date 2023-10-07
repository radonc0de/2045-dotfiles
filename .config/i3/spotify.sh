#!/bin/bash

song=$(playerctl -p spotify metadata title | head -c 25)
artist=$(playerctl -p spotify metadata artist | head -c 25)

if [[ -n "$song" && -n "$artist" ]]; then
    echo "♫ $song by $artist ♫"
else
    echo ""
fi
