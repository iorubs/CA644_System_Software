#!/bin/sh

while true
do
    load=$(uptime | sed -rn 's/.*:\s([0-9]).*/\1/p')
    test $load -ge 1 &&
    echo "System overloaded: load average is 1.00 or more."
    sleep 1
done
