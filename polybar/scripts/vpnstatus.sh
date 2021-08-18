#!/bin/sh

IFACE=$(ifconfig | grep tun0 | awk '{print $1}')

if [ "$IFACE" = "tun0:" ]; then
    echo "VPN: %{F#9fef00}$(ifconfig tun0 | grep inet | awk '{print $2}' | cut -f2 -d ':')%{u-}"
else
    echo "VPN: %{F#ffaf00}Offline%{u-}%{F-}"
fi
