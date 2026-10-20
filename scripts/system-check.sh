#!/bin/bash

echo "================================"
echo "       SYSTEM HEALTH CHECK"
echo "================================"

echo ""
echo "Hostname:"
hostname

echo ""
echo "Current User:"
whoami

echo ""
echo "IP Address:"
hostname -I

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Listening Ports:"
sudo ss -tuln

echo ""
echo "================================"
echo "       CHECK COMPLETED"
echo "================================"

