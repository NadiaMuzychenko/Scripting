#!/bin/sh

echo "uptime info" >> log.txt
uptime=$(uptime)
echo $uptime >> log.txt
echo " " >> log.txt

echo "Current users" >> log.txt
w=$(w)
echo $w >> log.txt
echo " " >> log.txt

echo "Recent logins" >> log.txt
recent_logins=$(last -a | head -n 10)
echo $recent_logins >> log.txt
echo "" >> log.txt

echo "TOP-10 processes by CPU usage" >> log.txt
processes=$(ps aux --sort=-%cpu | head -n 10)
echo $processes >> log.txt
echo "" >> log.txt

echo "TOP-10 processes by RAM usage" >> log.txt
processes_ram=$(ps aux --sort=-%mem | head -n 10)
echo $processes_ram >> log.txt
echo "" >> log.txt

echo "Virtual Memory usage" >> log.txt
Virtual_Memory=$(free -h)
echo $Virtual_Memory >> log.txt
echo "" >> log.txt

echo "Usage of disk space" >> log.txt
disk_space=$(df -h)
echo $disk_space >> log.txt
