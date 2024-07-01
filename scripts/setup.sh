#!/bin/sh

ip_forward_path="/proc/sys/net/ipv4/ip_forward"
sys_ctl_path="/etc/sysctl.conf"

pattern="net.ipv4.ip_forward=1"

expected=1
actual=$(cat "$ip_forward_path")

# enable ip forwarding
sed -i "s/^#\s*\(${pattern})/\1/g" "$sys_ctl_path"

# Load and apply kernel parameters from /etc/sysctl.conf
sudo sysctl -p

# verify that it's enabled
if ["$actual" == "$expected"]; then
    echo "IP forwarding has been enabled correctly"
else
    echo "IP forwarding has not been set correctly"
fi 



