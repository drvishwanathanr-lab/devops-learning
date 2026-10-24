import shutil
import socket
import os

print("=== DEVOPS SERVER HEALTH CHECK ===")

# Server information
print("Hostname:", socket.gethostname())

# Disk usage
total, used, free = shutil.disk_usage("/")
disk_percent = (used / total) * 100

print(f"Disk Usage: {disk_percent:.2f}%")

if disk_percent >= 90:
    print("ALERT: Disk usage is HIGH!")
else:
    print("Disk Status: OK")

# Memory information (Linux)
with open("/proc/meminfo", "r") as file:
    for line in file:
        if line.startswith("MemTotal:"):
            total_memory = int(line.split()[1])
        elif line.startswith("MemAvailable:"):
            available_memory = int(line.split()[1])

memory_percent = (
    (total_memory - available_memory) / total_memory
) * 100

print(f"Memory Usage: {memory_percent:.2f}%")

if memory_percent >= 90:
    print("ALERT: Memory usage is HIGH!")
else:
    print("Memory Status: OK")

print("=== HEALTH CHECK COMPLETE ===")
