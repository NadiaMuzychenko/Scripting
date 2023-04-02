#!/bin/sh

echo "uname info" >> osinfo.txt
#uname info get
os_version=$(uname -a)
echo $os_version >> osinfo.txt
echo " " >> osinfo.txt

echo "ip_config" >> osinfo.txt
ip_config=$(ifconfig -a)
echo $ip_config >> osinfo.txt
echo " " >> osinfo.txt

echo "ip_address" >> osinfo.txt
ip_address=$(ip address show)
echo $ip_address >> osinfo.txt
echo " " >> osinfo.txt

echo "resolv_conf" >> osinfo.txt
resolv_conf=$(cat /etc/resolv.conf)
echo $resolv_conf >> osinfo.txt
echo " " >> osinfo.txt

echo "sysctl_conf" >> osinfo.txt
sysctl_conf=$(cat /etc/sysctl.conf)
echo $sysctl_conf >> osinfo.txt
echo " " >> osinfo.txt


