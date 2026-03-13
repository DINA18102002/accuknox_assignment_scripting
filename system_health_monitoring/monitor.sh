#!/bin/bash

THRESHOLD=80
LOGFILE="system_health.log"

echo "===== System Health Check: $(date) =====" >> $LOGFILE

# CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
    echo "ALERT: CPU usage is high: $CPU_USAGE%" | tee -a $LOGFILE
fi

# Memory usage
MEM_USAGE=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')

if [ $MEM_USAGE -gt $THRESHOLD ]; then
    echo "ALERT: Memory usage is high: $MEM_USAGE%" | tee -a $LOGFILE
fi

# Disk usage
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $DISK_USAGE -gt $THRESHOLD ]; then
    echo "ALERT: Disk usage is high: $DISK_USAGE%" | tee -a $LOGFILE
fi

# Top processes
echo "Top 5 processes by CPU:" >> $LOGFILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6 >> $LOGFILE

echo "Check completed."