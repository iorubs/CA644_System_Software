#!/bin/sh

echo "Find all lines containing numbers:\n"
grep [0-9] labsheet-03-utils.ascii

echo "\nFind all lines containing a sequence of at least two digits:\n"
grep -E '[0-9]{2,}' labsheet-03-utils.ascii

echo "\nFind all lines containing a sequence of exactly three digits:\n"
grep -Ew '[0-9]{3}' labsheet-03-utils.ascii

echo "\nFind all lines containing a sequence of exactly three digits and Output only the matching number:\n"
grep -Ewo '[0-9]{3}' labsheet-03-utils.ascii

echo "\nWhat is the most commonly occurring two-digit number:"
grep -Eo '[0-9]{2}' labsheet-03-utils.ascii | sort | uniq -c | sort | tail -n 1 | awk '{ print  "The most occurring two digit number is: "$2" which occurred "$1" times" }'

