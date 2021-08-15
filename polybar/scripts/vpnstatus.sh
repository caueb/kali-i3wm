#!/bin/sh

IFACE=$(ifconfig | grep tun0 | awk '{print $1}')

if [ "$IFACE" = "tun0:" ]; then
    echo "VPN: %{u#55aa55}$(ifconfig tun0 | grep inet | awk '{print $2}' | cut -f2 -d ':')%{u-}"
else
    echo "%{F#FF0000}%{u#FF0000}VPN: Disconnected%{u-}%{F-}"
fi
