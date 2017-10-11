#!/bin/sh


# could do the same with: ls -flS
echo "sorting by size" &&
ls -fl | sort -k 5

# could do the same with ls -flSr
echo "sorting in reverse by size" &&
ls -fl | sort -k 5 -r
