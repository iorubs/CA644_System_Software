#!/bin/sh

echo "how many words are there in this document?"
tr ' ' '\n' < labsheet-03-utils.ascii | tr -c '[:alpha:]' '\n' | grep -v '^$' -c

echo "what are the most commonly occurring words?"
echo "Word\t\tAcurrences"
tr ' ' '\n' < labsheet-03-utils.ascii | tr -c '[:alpha:]' '\n' | grep -v '^$' | sort | uniq -c | sort -n | tail -n 5 | awk '{ print $2"\t\t"$1 }'

echo "how many numbers are there in this document?"
tr ' ' '\n' < labsheet-03-utils.ascii | tr -c '[:digit:]' '\n' | grep -v '^$' -c

echo "what are the most commonly occurring numbers?"
echo "Number\t\tAcurrences"
tr ' ' '\n' < labsheet-03-utils.ascii | tr -c '[:digit:]' '\n' | grep -v '^$' | sort | uniq -c | sort -n | tail -n 5 | awk '{ print $2"\t\t"$1 }'
