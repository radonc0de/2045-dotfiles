#!/bin/bash

weather=$(curl -s "wttr.in/?format=+%c+%t")
location=$(curl -s "wttr.in/?format=+%l")
city=$(echo "$location" | awk -F", " '{print $1}')
city=$(echo $city | head -c 10)
state=$(echo "$location" | awk -F", " '{print $2}')
state=$(echo "$state" | sed 's/ /_/g')
state=$(bash get_state_abbrev.sh $state)
echo $weather $city, $state
