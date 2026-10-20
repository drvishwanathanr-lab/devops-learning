#!/bin/bash

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Disk usage: $USAGE%"

if [ "$USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%"
else
    echo "Disk usage is normal"
fi
