#!/bin/bash

echo "Process list and CPU usage at $(date)"
echo "--------------------------------------"

# List top 20 processes by CPU usage
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 20

echo "--------------------------------------"
