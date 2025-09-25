#!/bin/bash

echo "Process list and CPU/Memory usage at $(date)"
echo "--------------------------------------------"

# List top 10 processes by CPU usage
echo "Top 10 processes by CPU usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 10
echo

# Identify the top CPU-consuming process
TOP_CPU=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | sed -n '2p')
echo "🔥 Top CPU-consuming process:"
echo "$TOP_CPU"
echo

# Identify the top Memory-consuming process
TOP_MEM=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | sed -n '2p')
echo "💾 Top Memory-consuming process:"
echo "$TOP_MEM"

echo "--------------------------------------------"
