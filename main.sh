#!/bin/bash


echo "System hostname:"
hostname

echo "\nOperating system:"
uname

echo "\nUptime:"
uptime -p

echo "\nKernel version:"
uname -r

echo "\nGeneral CPU information:"
lscpu | grep -E "Model name|Architecture|CPU(s)|Thread|Core|Socket|CPU MHz"

echo "\nMemory usage information:"
free -h

echo "\nIP information:"
ip link show

echo "\nFilesystem utilization:"
df -hT

echo "\nRecent errors (5):"
grep -i "error" /var/log/syslog | tail -n 5
