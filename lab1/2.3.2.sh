#!/bin/sh

test -s /dev/stdin &&
wc -l ||
echo "Usage: sh 2.3.2.sh < filename"
