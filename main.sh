#!/bin/bash


echo "System hostname:"
uname -n

echo "\nOperating system:"
uname

echo "\nUptime:"
uptime -p | cut -b 4-

echo "\nKernel version:"
uname -r

echo "\nGeneral CPU information:"
lscpu | grep "Model name" | cut -b 42-

echo "\nMemory usage information:"
free -h

echo "\nIP information:"
ip address

echo "\nFilesystem utilization:"
df -HT

echo "\nRecent errors (5):"
sudo grep -i "error" /var/log/syslog | tail -n 5