#!/bin/sh

echo "how many words are there in this document?"
grep -E "[[:alpha:]]+" -o labsheet-03-utils.ascii | wc -l

echo "what are the most commonly occurring words?"
echo "Word\t\tAcurrences"
grep -E "[[:alpha:]]+" -o labsheet-03-utils.ascii | sort | uniq -c | sort | tail -n 5 | awk '{ print $2"\t\t"$1 }'

echo "how many numbers are there in this document?"
grep -E "[[:digit:]]+" -o labsheet-03-utils.ascii | wc -l

echo "what are the most commonly occurring numbers?"
echo "Number\t\tAcurrences"
grep -E "[[:digit:]]+" -o labsheet-03-utils.ascii | sort | uniq -c | sort | tail -n 5 | awk '{ print $2"\t\t"$1 }'
