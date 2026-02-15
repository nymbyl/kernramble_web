#!/bin/sh

# get ip
#/sbin/ifconfig
#ip -4 addr show eth0
local_ip=`ip -4 addr show enp2s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`

# then like this:
hugo server --bind "$local_ip" --baseURL=http://"$local_ip" --disableFastRender
