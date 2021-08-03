#!/usr/bin/bash

IFACE=$(ifconfig | grep tun0 | awk '{print $1}')

if [ "$IFACE" = "tun0:" ]; then
    sudo killall -q openvpn
else
    sudo openvpn /home/kali/Downloads/release_arena_cbx.ovpn
fi
