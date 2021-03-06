#!/bin/bash

echo -n "host name:"
hostname

echo -n "disk avail:"
df -H --output=avail / | tail -n1 | xargs

echo -n "cpu temp:"
# sudo vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*'
sensors | grep temp1 | cut -d: -f2 | xargs

echo -n "cpu idle:"
iostat | grep -A 1 avg-cpu | tail -n1 | xargs | cut -d' ' -f6

echo -n "mem avail:"
free -h | grep Mem | xargs | cut -d' ' -f7
