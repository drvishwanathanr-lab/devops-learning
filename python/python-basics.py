# Python basics for DevOps

server_name = "web-server-01"
cpu_usage = 75
disk_usage = 82

print("Server:", server_name)
print("CPU Usage:", cpu_usage, "%")
print("Disk Usage:", disk_usage, "%")

# Condition
if cpu_usage > 90:
    print("WARNING: High CPU usage!")
else:
    print("CPU status: Normal")

# Loop
for check in range(1, 4):
    print("Health check number:", check)
