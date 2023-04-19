#/bin/bash
length=$(nmcli connection show --active | grep -b -o "UUID" | cut -d: -f1)
ip=$(ip -f inet addr | grep 'noprefixroute wlp166s0' | head -c 21 | tail -c 12)
essid=$(nmcli connection show --active | grep wifi | head -c $length)

if [ -n "$essid" ]; then
    echo -n 🌐 $essid $ip | head -c 40
fi
status=$(protonvpn-cli s)
server=$(echo "$status" | grep "Server:" | awk '{print $2}')
uptime=$(echo "$status" | grep "time:" | awk '{print $3}')
if [ -n "$server" ]; then
    echo " 🔐 $server $uptime"
else
    echo " 🔓"
fi
