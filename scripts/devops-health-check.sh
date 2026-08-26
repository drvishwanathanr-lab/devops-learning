#!/bin/bash
echo "Environment: DevOps Learning Lab"
echo "========================================"
echo "        DEVOPS SERVER HEALTH CHECK"
echo "========================================"

echo ""
echo "1. HOSTNAME"
hostname

echo ""
echo "2. CURRENT USER"
whoami

echo ""
echo "3. IP ADDRESS"
hostname -I

echo ""
echo "4. DISK USAGE"
df -h /

echo ""
echo "5. MEMORY"
free -h

echo ""
echo "6. UPTIME"
uptime

echo ""
echo "7. SSH STATUS"

if sudo service ssh status > /dev/null 2>&1; then
    echo "SSH: RUNNING"
else
    echo "SSH: NOT RUNNING"
fi

echo ""
echo "8. PORT 22"

if sudo ss -tln | grep -q ":22"; then
    echo "SSH PORT 22: LISTENING"
else
    echo "SSH PORT 22: NOT LISTENING"
fi

echo ""
echo "========================================"
echo "          HEALTH CHECK COMPLETE"
echo "========================================"
