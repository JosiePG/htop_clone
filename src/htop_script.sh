#!/bin/bash
# TODO: Explore /proc/interrupts, /proc/meminfo and /proc/stat

mem=$(cat /proc/meminfo | head -n 5)
echo "Welcome to HTOP Clone"
echo
echo "Memory"
echo
echo "$mem"
echo
echo "CPU Usuage"
echo
echo "user procs | nice procs | system procs | idle time | iowait time | Interrupts | Softirqs"
cpu=$(cat /proc/stat | head -n 1 )
read -r cpu_label user nice system idle iowait inter g t f<<< "$cpu" 
echo "$user $nice $system $idle $iowait $inter"
